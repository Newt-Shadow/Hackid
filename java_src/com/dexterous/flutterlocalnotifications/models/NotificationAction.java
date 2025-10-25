package com.dexterous.flutterlocalnotifications.models;

import android.graphics.Color;
import androidx.annotation.Keep;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@Keep
/* loaded from: classes.dex */
public class NotificationAction implements Serializable {
    private static final String ALLOW_GENERATED_REPLIES = "allowGeneratedReplies";
    private static final String CANCEL_NOTIFICATION = "cancelNotification";
    private static final String CONTEXTUAL = "contextual";
    private static final String ICON = "icon";
    private static final String ICON_SOURCE = "iconBitmapSource";
    private static final String ID = "id";
    private static final String INPUTS = "inputs";
    private static final String INVISIBLE = "invisible";
    private static final String SEMANTIC_ACTION = "semanticAction";
    private static final String SHOWS_USER_INTERFACE = "showsUserInterface";
    private static final String TITLE = "title";
    private static final String TITLE_COLOR_ALPHA = "titleColorAlpha";
    private static final String TITLE_COLOR_BLUE = "titleColorBlue";
    private static final String TITLE_COLOR_GREEN = "titleColorGreen";
    private static final String TITLE_COLOR_RED = "titleColorRed";
    public final List<a> actionInputs = new ArrayList();
    public final Boolean allowGeneratedReplies;
    public final Boolean cancelNotification;
    public final Boolean contextual;
    public final String icon;
    public final IconSource iconSource;

    /* renamed from: id  reason: collision with root package name */
    public final String f5545id;
    public final Boolean invisible;
    public final Integer semanticAction;
    public final Boolean showsUserInterface;
    public final String title;
    public final Integer titleColor;

    /* loaded from: classes.dex */
    public static class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public final List f5546a;

        /* renamed from: b  reason: collision with root package name */
        public final Boolean f5547b;

        /* renamed from: c  reason: collision with root package name */
        public final String f5548c;

        /* renamed from: d  reason: collision with root package name */
        public final List f5549d;

        public a(List list, Boolean bool, String str, List list2) {
            this.f5546a = list;
            this.f5547b = bool;
            this.f5548c = str;
            this.f5549d = list2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            List list = this.f5546a;
            if (list == null ? aVar.f5546a != null : !list.equals(aVar.f5546a)) {
                return false;
            }
            Boolean bool = this.f5547b;
            if (bool == null ? aVar.f5547b != null : !bool.equals(aVar.f5547b)) {
                return false;
            }
            String str = this.f5548c;
            if (str == null ? aVar.f5548c != null : !str.equals(aVar.f5548c)) {
                return false;
            }
            List list2 = this.f5549d;
            if (list2 != null) {
                return list2.equals(aVar.f5549d);
            }
            if (aVar.f5549d == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int i11;
            int i12;
            List list = this.f5546a;
            int i13 = 0;
            if (list != null) {
                i10 = list.hashCode();
            } else {
                i10 = 0;
            }
            int i14 = i10 * 31;
            Boolean bool = this.f5547b;
            if (bool != null) {
                i11 = bool.hashCode();
            } else {
                i11 = 0;
            }
            int i15 = (i14 + i11) * 31;
            String str = this.f5548c;
            if (str != null) {
                i12 = str.hashCode();
            } else {
                i12 = 0;
            }
            int i16 = (i15 + i12) * 31;
            List list2 = this.f5549d;
            if (list2 != null) {
                i13 = list2.hashCode();
            }
            return i16 + i13;
        }
    }

    public NotificationAction(Map<String, Object> map) {
        List<Map> list;
        this.f5545id = (String) map.get("id");
        this.cancelNotification = (Boolean) map.get(CANCEL_NOTIFICATION);
        this.title = (String) map.get(TITLE);
        Integer num = (Integer) map.get(TITLE_COLOR_ALPHA);
        Integer num2 = (Integer) map.get(TITLE_COLOR_RED);
        Integer num3 = (Integer) map.get(TITLE_COLOR_GREEN);
        Integer num4 = (Integer) map.get(TITLE_COLOR_BLUE);
        if (num != null && num2 != null && num3 != null && num4 != null) {
            this.titleColor = Integer.valueOf(Color.argb(num.intValue(), num2.intValue(), num3.intValue(), num4.intValue()));
        } else {
            this.titleColor = null;
        }
        this.icon = (String) map.get(ICON);
        this.contextual = (Boolean) map.get(CONTEXTUAL);
        this.showsUserInterface = (Boolean) map.get(SHOWS_USER_INTERFACE);
        this.allowGeneratedReplies = (Boolean) map.get(ALLOW_GENERATED_REPLIES);
        this.semanticAction = (Integer) map.get(SEMANTIC_ACTION);
        this.invisible = (Boolean) map.get(INVISIBLE);
        Integer num5 = (Integer) map.get(ICON_SOURCE);
        if (num5 != null) {
            this.iconSource = IconSource.values()[num5.intValue()];
        } else {
            this.iconSource = null;
        }
        if (map.get(INPUTS) != null && (list = (List) map.get(INPUTS)) != null) {
            for (Map map2 : list) {
                this.actionInputs.add(new a(castList(String.class, (Collection) map2.get("choices")), (Boolean) map2.get("allowFreeFormInput"), (String) map2.get("label"), castList(String.class, (Collection) map2.get("allowedMimeTypes"))));
            }
        }
    }

    public static <T> List<T> castList(Class<? extends T> cls, Collection<?> collection) {
        if (collection == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(cls.cast(it.next()));
            } catch (ClassCastException unused) {
            }
        }
        return arrayList;
    }
}
