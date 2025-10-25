package io.appmetrica.analytics.impl;

import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class J5 {

    /* renamed from: a  reason: collision with root package name */
    public static final List f18424a = CollectionUtils.createSortedListWithoutRepetitions(Chapter.KEY_ID, "type", "report_request_parameters", "session_description");

    /* renamed from: b  reason: collision with root package name */
    public static final String f18425b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f18426c;

    static {
        Locale locale = Locale.US;
        f18425b = String.format(locale, "SELECT DISTINCT %s  FROM %s WHERE %s >=0 AND (SELECT count() FROM %5$s WHERE %5$s.%6$s = %2$s.%3$s AND %5$s.%7$s = %2$s.%4$s) > 0 ORDER BY %3$s LIMIT 1", "report_request_parameters", "sessions", Chapter.KEY_ID, "type", "events", "session_id", "session_type");
        f18426c = String.format(locale, "(select count(%s.%s) from %s where %s.%s = %s.%s) = 0 and cast(%s as integer) < ?", "events", Chapter.KEY_ID, "events", "events", "session_id", "sessions", Chapter.KEY_ID, Chapter.KEY_ID);
    }
}
