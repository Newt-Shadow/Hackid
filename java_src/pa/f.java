package pa;

import android.hardware.camera2.CaptureRequest;
import android.media.CamcorderProfile;
import android.media.EncoderProfiles;
import android.os.Build;
import android.util.Size;
import fa.e0;
import java.util.List;
/* loaded from: classes.dex */
public class f extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private Size f27902b;

    /* renamed from: c  reason: collision with root package name */
    private Size f27903c;

    /* renamed from: d  reason: collision with root package name */
    private CamcorderProfile f27904d;

    /* renamed from: e  reason: collision with root package name */
    private EncoderProfiles f27905e;

    /* renamed from: f  reason: collision with root package name */
    private g f27906f;

    /* renamed from: g  reason: collision with root package name */
    private int f27907g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f27908a;

        static {
            int[] iArr = new int[g.values().length];
            f27908a = iArr;
            try {
                iArr[g.max.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27908a[g.ultraHigh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27908a[g.veryHigh.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27908a[g.high.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f27908a[g.medium.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f27908a[g.low.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public f(e0 e0Var, g gVar, String str) {
        super(e0Var);
        this.f27906f = gVar;
        try {
            int parseInt = Integer.parseInt(str, 10);
            this.f27907g = parseInt;
            e(gVar, parseInt);
        } catch (NumberFormatException unused) {
            this.f27907g = -1;
        }
    }

    static Size d(int i10, g gVar) {
        List videoProfiles;
        int width;
        int height;
        int ordinal = gVar.ordinal();
        g gVar2 = g.high;
        if (ordinal > gVar2.ordinal()) {
            gVar = gVar2;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            videoProfiles = f(i10, gVar).getVideoProfiles();
            EncoderProfiles.VideoProfile a10 = b.a(videoProfiles.get(0));
            if (a10 != null) {
                width = a10.getWidth();
                height = a10.getHeight();
                return new Size(width, height);
            }
        }
        CamcorderProfile g10 = g(i10, gVar);
        return new Size(g10.videoFrameWidth, g10.videoFrameHeight);
    }

    private void e(g gVar, int i10) {
        List videoProfiles;
        int width;
        int height;
        if (!c()) {
            return;
        }
        boolean z10 = false;
        if (Build.VERSION.SDK_INT >= 31) {
            this.f27904d = null;
            EncoderProfiles f10 = f(i10, gVar);
            this.f27905e = f10;
            videoProfiles = f10.getVideoProfiles();
            EncoderProfiles.VideoProfile a10 = b.a(videoProfiles.get(0));
            if (a10 != null) {
                width = a10.getWidth();
                height = a10.getHeight();
                this.f27902b = new Size(width, height);
                z10 = true;
            }
        }
        if (!z10) {
            this.f27905e = null;
            this.f27904d = g(i10, gVar);
            CamcorderProfile camcorderProfile = this.f27904d;
            this.f27902b = new Size(camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        }
        this.f27903c = d(i10, gVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.media.EncoderProfiles f(int r2, pa.g r3) {
        /*
            if (r2 < 0) goto L6f
            java.lang.String r0 = java.lang.Integer.toString(r2)
            int[] r1 = pa.f.a.f27908a
            int r3 = r3.ordinal()
            r3 = r1[r3]
            switch(r3) {
                case 1: goto L12;
                case 2: goto L1e;
                case 3: goto L2b;
                case 4: goto L37;
                case 5: goto L43;
                case 6: goto L4f;
                default: goto L11;
            }
        L11:
            goto L5b
        L12:
            r3 = 1
            boolean r1 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r1 == 0) goto L1e
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L1e:
            r3 = 8
            boolean r1 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r1 == 0) goto L2b
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L2b:
            r3 = 6
            boolean r1 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r1 == 0) goto L37
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L37:
            r3 = 5
            boolean r1 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r1 == 0) goto L43
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L43:
            r3 = 4
            boolean r1 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r1 == 0) goto L4f
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L4f:
            r3 = 7
            boolean r1 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r1 == 0) goto L5b
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L5b:
            r3 = 0
            boolean r2 = android.media.CamcorderProfile.hasProfile(r2, r3)
            if (r2 == 0) goto L67
            android.media.EncoderProfiles r2 = pa.e.a(r0, r3)
            return r2
        L67:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "No capture session available for current capture session."
            r2.<init>(r3)
            throw r2
        L6f:
            java.lang.AssertionError r2 = new java.lang.AssertionError
            java.lang.String r3 = "getBestAvailableCamcorderProfileForResolutionPreset can only be used with valid (>=0) camera identifiers."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.f.f(int, pa.g):android.media.EncoderProfiles");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.media.CamcorderProfile g(int r1, pa.g r2) {
        /*
            if (r1 < 0) goto L6b
            int[] r0 = pa.f.a.f27908a
            int r2 = r2.ordinal()
            r2 = r0[r2]
            switch(r2) {
                case 1: goto Le;
                case 2: goto L1a;
                case 3: goto L27;
                case 4: goto L33;
                case 5: goto L3f;
                case 6: goto L4b;
                default: goto Ld;
            }
        Ld:
            goto L57
        Le:
            r2 = 1
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L1a
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L1a:
            r2 = 8
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L27
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L27:
            r2 = 6
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L33
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L33:
            r2 = 5
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L3f
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L3f:
            r2 = 4
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L4b
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L4b:
            r2 = 7
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L57
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L57:
            r2 = 0
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L63
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L63:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "No capture session available for current capture session."
            r1.<init>(r2)
            throw r1
        L6b:
            java.lang.AssertionError r1 = new java.lang.AssertionError
            java.lang.String r2 = "getBestAvailableCamcorderProfileForResolutionPreset can only be used with valid (>=0) camera identifiers."
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.f.g(int, pa.g):android.media.CamcorderProfile");
    }

    @Override // ga.a
    public String a() {
        return "ResolutionFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
    }

    public boolean c() {
        if (this.f27907g >= 0) {
            return true;
        }
        return false;
    }

    public Size h() {
        return this.f27903c;
    }
}
