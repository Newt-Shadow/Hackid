package io.appmetrica.analytics.impl;

import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class H5 {

    /* renamed from: a  reason: collision with root package name */
    public static final List f18289a = CollectionUtils.createSortedListWithoutRepetitions(Chapter.KEY_ID, "session_id", "session_type", "number_in_session", "type", "global_number", FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME, "event_description");
}
