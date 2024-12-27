function onproxy
    set -gx http_proxy 127.0.0.1:7890
    set -gx https_proxy 127.0.0.1:7890
    set -gx all_proxy 127.0.0.1:7890
    set -gx HTTP_PROXY 127.0.0.1:7890
    set -gx HTTPS_PROXY 127.0.0.1:7890
    set -gx ALL_PROXY 127.0.0.1:7890
end
