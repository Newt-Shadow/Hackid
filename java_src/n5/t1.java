package n5;

import android.net.Uri;
/* loaded from: classes.dex */
public abstract class t1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f26397a;

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f26398b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ int f26399c = 0;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f26397a = parse;
        f26398b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }
}
