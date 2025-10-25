package com.pichillilorenzo.flutter_inappwebview_android.types;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ProxyRuleExt {
    private String schemeFilter;
    private String url;

    public ProxyRuleExt(String str, String str2) {
        this.schemeFilter = str;
        this.url = str2;
    }

    public static ProxyRuleExt fromMap(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        return new ProxyRuleExt(map.get("schemeFilter"), map.get("url"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProxyRuleExt proxyRuleExt = (ProxyRuleExt) obj;
        String str = this.schemeFilter;
        if (str == null ? proxyRuleExt.schemeFilter != null : !str.equals(proxyRuleExt.schemeFilter)) {
            return false;
        }
        return this.url.equals(proxyRuleExt.url);
    }

    public String getSchemeFilter() {
        return this.schemeFilter;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int i10;
        String str = this.schemeFilter;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return (i10 * 31) + this.url.hashCode();
    }

    public void setSchemeFilter(String str) {
        this.schemeFilter = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public Map<String, String> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("url", this.url);
        hashMap.put("schemeFilter", this.schemeFilter);
        return hashMap;
    }

    public String toString() {
        return "ProxyRuleExt{schemeFilter='" + this.schemeFilter + "', url='" + this.url + "'}";
    }
}
