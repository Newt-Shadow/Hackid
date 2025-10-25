package com.pichillilorenzo.flutter_inappwebview_android.types;

import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Map;
/* loaded from: classes.dex */
public class ContentWorld {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private String name;
    public static final ContentWorld PAGE = new ContentWorld("page");
    public static final ContentWorld DEFAULT_CLIENT = new ContentWorld("defaultClient");

    private ContentWorld(String str) {
        this.name = str;
    }

    public static ContentWorld fromMap(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return new ContentWorld((String) map.get(Constants.NAME));
    }

    public static ContentWorld world(String str) {
        return new ContentWorld(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.name.equals(((ContentWorld) obj).name);
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "ContentWorld{name='" + this.name + "'}";
    }
}
