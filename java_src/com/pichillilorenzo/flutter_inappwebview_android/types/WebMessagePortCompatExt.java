package com.pichillilorenzo.flutter_inappwebview_android.types;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class WebMessagePortCompatExt {
    private int index;
    private String webMessageChannelId;

    public WebMessagePortCompatExt(int i10, String str) {
        this.index = i10;
        this.webMessageChannelId = str;
    }

    public static WebMessagePortCompatExt fromMap(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return new WebMessagePortCompatExt(((Integer) map.get(StreamInformation.KEY_INDEX)).intValue(), (String) map.get("webMessageChannelId"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WebMessagePortCompatExt webMessagePortCompatExt = (WebMessagePortCompatExt) obj;
        if (this.index != webMessagePortCompatExt.index) {
            return false;
        }
        return this.webMessageChannelId.equals(webMessagePortCompatExt.webMessageChannelId);
    }

    public int getIndex() {
        return this.index;
    }

    public String getWebMessageChannelId() {
        return this.webMessageChannelId;
    }

    public int hashCode() {
        return (this.index * 31) + this.webMessageChannelId.hashCode();
    }

    public void setIndex(int i10) {
        this.index = i10;
    }

    public void setWebMessageChannelId(String str) {
        this.webMessageChannelId = str;
    }

    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put(StreamInformation.KEY_INDEX, Integer.valueOf(this.index));
        hashMap.put("webMessageChannelId", this.webMessageChannelId);
        return hashMap;
    }

    public String toString() {
        return "WebMessagePortCompatExt{index=" + this.index + ", webMessageChannelId='" + this.webMessageChannelId + "'}";
    }
}
