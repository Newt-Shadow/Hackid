package gd;

import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class m extends f {
    public /* synthetic */ m(File file, File file2, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(File file, File file2, String str) {
        super(file, file2, str);
        kotlin.jvm.internal.m.e(file, "file");
    }
}
