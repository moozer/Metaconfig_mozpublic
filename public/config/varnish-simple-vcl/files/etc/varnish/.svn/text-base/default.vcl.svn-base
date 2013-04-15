%header("##")
backend default {
    .host = "%(host)";
    .port = "%(port)";
}

sub vcl_recv
{
    remove req.http.X-Forwarded-For;
    set req.http.X-Forwarded-For = client.ip;

    ## Properly handle different encoding types
    if (req.http.Accept-Encoding)
    {
        if (req.url ~ "\.(%("|".join(ext_binary)))$")
        {
            ## No point in compressing these
            remove req.http.Accept-Encoding;
        }
        elsif (req.http.Accept-Encoding ~ "gzip")
        {
            set req.http.Accept-Encoding = "gzip";
        }
        elsif (req.http.Accept-Encoding ~ "deflate")
        {
            set req.http.Accept-Encoding = "deflate";
        }
        else
        {
            ## unkown algorithm
            remove req.http.Accept-Encoding;
        }
    }

    #foreach url in url_pass
      if (req.url ~ "%(url)" ) { return (pass); }
    #end

    #foreach url in url_pipe
      if (req.url ~ "%(url)") { set req.http.connection = "close"; return (pipe); }
    #end

    ## Default request checks
    if (req.request != "GET" && req.request != "HEAD" && req.request != "PUT" && req.request != "POST" &&  req.request != "TRACE" && req.request != "OPTIONS" && req.request != "DELETE")
    {
        return (pipe);
    }

    if (req.request != "GET" && req.request != "HEAD")
    {
        return (pass);
    }

    #foreach ext in ext_remove_query
      set req.url = regsub(req.url, "\.%(ext)\?.*", ".%(ext)");
    #end

    #if ext_ignore_cookie
      if (req.url ~ "\.(%("|".join(ext_ignore_cookie)))$")
      {
          remove req.http.Cookie;
      }
    #end

    if (req.http.Authorization || req.http.Cookie) {
        ## Not cacheable
        return (pass);
    }

    return (lookup);
}

sub vcl_fetch
{
    set beresp.http.Server = "%(server)";

    if (beresp.status == 404)
    {
        set beresp.ttl = %(ttl_notfound);
        return (deliver);
    }

    set beresp.ttl = %(ttl_default);

    #if ext_static
      if (req.url ~ "\.(%("|".join(ext_static)))$")
      {
          set beresp.ttl = %(ttl_static);
      }
    #end

    #if ext_dynamic
      if (req.url ~ "\.(%("|".join(ext_dynamic)))$")
      {
          set beresp.ttl = %(ttl_dynamic);
      }
    #end

    #foreach url in url_static
      if (req.url ~ "%(url)") { set beresp.ttl = %(ttl_static); }
    #end

    #foreach url in url_dynamic
      if (req.url ~ "%(url)") { set beresp.ttl = %(ttl_dynamic); }
    #end

    return (deliver);
}

sub vcl_deliver
{
    ## Add hit headers
    if (obj.hits > 0)
    {
        set resp.http.X-Cache = "Hit";
        set resp.http.X-Cache-Hits = obj.hits;
    }
    else
    {
        set resp.http.X-Cache = "Miss";
    }
}
