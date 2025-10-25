package com.pichillilorenzo.flutter_inappwebview_android.types;

import com.arthenica.ffmpegkit.Chapter;
import java.util.Map;
/* loaded from: classes.dex */
public class CustomTabsMenuItem {

    /* renamed from: id  reason: collision with root package name */
    private int f9461id;
    private String label;

    public CustomTabsMenuItem(int i10, String str) {
        this.f9461id = i10;
        this.label = str;
    }

    public static CustomTabsMenuItem fromMap(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return new CustomTabsMenuItem(((Integer) map.get(Chapter.KEY_ID)).intValue(), (String) map.get("label"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CustomTabsMenuItem customTabsMenuItem = (CustomTabsMenuItem) obj;
        if (this.f9461id != customTabsMenuItem.f9461id) {
            return false;
        }
        return this.label.equals(customTabsMenuItem.label);
    }

    public int getId() {
        return this.f9461id;
    }

    public String getLabel() {
        return this.label;
    }

    public int hashCode() {
        return (this.f9461id * 31) + this.label.hashCode();
    }

    public void setId(int i10) {
        this.f9461id = i10;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String toString() {
        return "CustomTabsMenuItem{id=" + this.f9461id + ", label='" + this.label + "'}";
    }
}
