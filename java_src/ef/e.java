package ef;

import java.nio.file.CopyOption;
import java.nio.file.FileVisitOption;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final OpenOption[] f15528a;

    /* renamed from: b  reason: collision with root package name */
    private static final OpenOption[] f15529b;

    /* renamed from: c  reason: collision with root package name */
    public static final CopyOption[] f15530c;

    /* renamed from: d  reason: collision with root package name */
    public static final a[] f15531d;

    /* renamed from: e  reason: collision with root package name */
    public static final FileAttribute[] f15532e;

    /* renamed from: f  reason: collision with root package name */
    public static final FileVisitOption[] f15533f;

    /* renamed from: g  reason: collision with root package name */
    public static final LinkOption[] f15534g;

    /* renamed from: h  reason: collision with root package name */
    public static final LinkOption[] f15535h;

    /* renamed from: i  reason: collision with root package name */
    static final LinkOption f15536i;

    /* renamed from: j  reason: collision with root package name */
    public static final OpenOption[] f15537j;

    /* renamed from: k  reason: collision with root package name */
    public static final Path[] f15538k;

    static {
        StandardOpenOption standardOpenOption;
        StandardOpenOption standardOpenOption2;
        StandardOpenOption standardOpenOption3;
        StandardOpenOption standardOpenOption4;
        LinkOption linkOption;
        standardOpenOption = StandardOpenOption.CREATE;
        standardOpenOption2 = StandardOpenOption.TRUNCATE_EXISTING;
        f15528a = new OpenOption[]{standardOpenOption, standardOpenOption2};
        standardOpenOption3 = StandardOpenOption.CREATE;
        standardOpenOption4 = StandardOpenOption.APPEND;
        f15529b = new OpenOption[]{standardOpenOption3, standardOpenOption4};
        f15530c = new CopyOption[0];
        f15531d = new a[0];
        f15532e = new FileAttribute[0];
        f15533f = new FileVisitOption[0];
        f15534g = new LinkOption[0];
        linkOption = LinkOption.NOFOLLOW_LINKS;
        f15535h = new LinkOption[]{linkOption};
        f15536i = null;
        f15537j = new OpenOption[0];
        f15538k = new Path[0];
    }
}
