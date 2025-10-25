package f3;

import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import c3.t3;
import f3.b0;
import f3.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import y4.q0;
/* loaded from: classes.dex */
public final class j0 implements b0 {

    /* renamed from: d  reason: collision with root package name */
    public static final b0.c f15700d = new b0.c() { // from class: f3.d0
        @Override // f3.b0.c
        public final b0 a(UUID uuid) {
            b0 A;
            A = j0.A(uuid);
            return A;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final UUID f15701a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaDrm f15702b;

    /* renamed from: c  reason: collision with root package name */
    private int f15703c;

    /* loaded from: classes.dex */
    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            boolean requiresSecureDecoder;
            requiresSecureDecoder = mediaDrm.requiresSecureDecoder(str);
            return requiresSecureDecoder;
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, t3 t3Var) {
            LogSessionId logSessionId;
            boolean equals;
            MediaDrm.PlaybackComponent playbackComponent;
            LogSessionId a10 = t3Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                playbackComponent = mediaDrm.getPlaybackComponent(bArr);
                g0.a(y4.a.e(playbackComponent)).setLogSessionId(a10);
            }
        }
    }

    private j0(UUID uuid) {
        y4.a.e(uuid);
        y4.a.b(!b3.s.f4352b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f15701a = uuid;
        MediaDrm mediaDrm = new MediaDrm(u(uuid));
        this.f15702b = mediaDrm;
        this.f15703c = 1;
        if (b3.s.f4354d.equals(uuid) && B()) {
            w(mediaDrm);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b0 A(UUID uuid) {
        try {
            return C(uuid);
        } catch (o0 unused) {
            y4.r.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new z();
        }
    }

    private static boolean B() {
        return "ASUS_Z00AD".equals(q0.f32949d);
    }

    public static j0 C(UUID uuid) {
        try {
            return new j0(uuid);
        } catch (UnsupportedSchemeException e10) {
            throw new o0(1, e10);
        } catch (Exception e11) {
            throw new o0(2, e11);
        }
    }

    private static byte[] p(byte[] bArr) {
        int indexOf;
        y4.e0 e0Var = new y4.e0(bArr);
        int t10 = e0Var.t();
        short v10 = e0Var.v();
        short v11 = e0Var.v();
        if (v10 == 1 && v11 == 1) {
            short v12 = e0Var.v();
            Charset charset = n6.e.f26429e;
            String E = e0Var.E(v12, charset);
            if (E.contains("<LA_URL>")) {
                return bArr;
            }
            if (E.indexOf("</DATA>") == -1) {
                y4.r.i("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
            }
            String str = E.substring(0, indexOf) + "<LA_URL>https://x</LA_URL>" + E.substring(indexOf);
            int i10 = t10 + 52;
            ByteBuffer allocate = ByteBuffer.allocate(i10);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(i10);
            allocate.putShort(v10);
            allocate.putShort(v11);
            allocate.putShort((short) (str.length() * 2));
            allocate.put(str.getBytes(charset));
            return allocate.array();
        }
        y4.r.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
        return bArr;
    }

    private static String q(String str) {
        if ("<LA_URL>https://x</LA_URL>".equals(str)) {
            return "";
        }
        if (q0.f32946a == 33 && "https://default.url".equals(str)) {
            return "";
        }
        return str;
    }

    private static byte[] r(UUID uuid, byte[] bArr) {
        if (b3.s.f4353c.equals(uuid)) {
            return f3.a.a(bArr);
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        if ("AFTT".equals(r0) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] s(java.util.UUID r3, byte[] r4) {
        /*
            java.util.UUID r0 = b3.s.f4355e
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L18
            byte[] r1 = o3.l.e(r4, r3)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r4 = r1
        L10:
            byte[] r4 = p(r4)
            byte[] r4 = o3.l.a(r0, r4)
        L18:
            int r1 = y4.q0.f32946a
            r2 = 23
            if (r1 >= r2) goto L26
            java.util.UUID r1 = b3.s.f4354d
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L58
        L26:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L5f
            java.lang.String r0 = "Amazon"
            java.lang.String r1 = y4.q0.f32948c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
            java.lang.String r0 = y4.q0.f32949d
            java.lang.String r1 = "AFTB"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTS"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTM"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTT"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
        L58:
            byte[] r3 = o3.l.e(r4, r3)
            if (r3 == 0) goto L5f
            return r3
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: f3.j0.s(java.util.UUID, byte[]):byte[]");
    }

    private static String t(UUID uuid, String str) {
        if (q0.f32946a < 26 && b3.s.f4353c.equals(uuid) && ("video/mp4".equals(str) || "audio/mp4".equals(str))) {
            return "cenc";
        }
        return str;
    }

    private static UUID u(UUID uuid) {
        if (q0.f32946a < 27 && b3.s.f4353c.equals(uuid)) {
            return b3.s.f4352b;
        }
        return uuid;
    }

    private static void w(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static m.b y(UUID uuid, List list) {
        boolean z10;
        if (!b3.s.f4354d.equals(uuid)) {
            return (m.b) list.get(0);
        }
        if (q0.f32946a >= 28 && list.size() > 1) {
            m.b bVar = (m.b) list.get(0);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                m.b bVar2 = (m.b) list.get(i11);
                byte[] bArr = (byte[]) y4.a.e(bVar2.f15722e);
                if (q0.c(bVar2.f15721d, bVar.f15721d) && q0.c(bVar2.f15720c, bVar.f15720c) && o3.l.c(bArr)) {
                    i10 += bArr.length;
                } else {
                    z10 = false;
                    break;
                }
            }
            z10 = true;
            if (z10) {
                byte[] bArr2 = new byte[i10];
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    byte[] bArr3 = (byte[]) y4.a.e(((m.b) list.get(i13)).f15722e);
                    int length = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i12, length);
                    i12 += length;
                }
                return bVar.b(bArr2);
            }
        }
        for (int i14 = 0; i14 < list.size(); i14++) {
            m.b bVar3 = (m.b) list.get(i14);
            int g10 = o3.l.g((byte[]) y4.a.e(bVar3.f15722e));
            int i15 = q0.f32946a;
            if (i15 < 23 && g10 == 0) {
                return bVar3;
            }
            if (i15 >= 23 && g10 == 1) {
                return bVar3;
            }
        }
        return (m.b) list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(b0.b bVar, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        bVar.a(this, bArr, i10, i11, bArr2);
    }

    @Override // f3.b0
    public Map a(byte[] bArr) {
        return this.f15702b.queryKeyStatus(bArr);
    }

    @Override // f3.b0
    public void b(final b0.b bVar) {
        MediaDrm.OnEventListener onEventListener;
        MediaDrm mediaDrm = this.f15702b;
        if (bVar == null) {
            onEventListener = null;
        } else {
            onEventListener = new MediaDrm.OnEventListener() { // from class: f3.e0
                @Override // android.media.MediaDrm.OnEventListener
                public final void onEvent(MediaDrm mediaDrm2, byte[] bArr, int i10, int i11, byte[] bArr2) {
                    j0.this.z(bVar, mediaDrm2, bArr, i10, i11, bArr2);
                }
            };
        }
        mediaDrm.setOnEventListener(onEventListener);
    }

    @Override // f3.b0
    public b0.d c() {
        MediaDrm.ProvisionRequest provisionRequest = this.f15702b.getProvisionRequest();
        return new b0.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // f3.b0
    public byte[] e() {
        return this.f15702b.openSession();
    }

    @Override // f3.b0
    public boolean f(byte[] bArr, String str) {
        if (q0.f32946a >= 31) {
            return a.a(this.f15702b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f15701a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // f3.b0
    public void g(byte[] bArr, byte[] bArr2) {
        this.f15702b.restoreKeys(bArr, bArr2);
    }

    @Override // f3.b0
    public void h(byte[] bArr) {
        this.f15702b.closeSession(bArr);
    }

    @Override // f3.b0
    public byte[] i(byte[] bArr, byte[] bArr2) {
        if (b3.s.f4353c.equals(this.f15701a)) {
            bArr2 = f3.a.b(bArr2);
        }
        return this.f15702b.provideKeyResponse(bArr, bArr2);
    }

    @Override // f3.b0
    public void j(byte[] bArr, t3 t3Var) {
        if (q0.f32946a >= 31) {
            try {
                a.b(this.f15702b, bArr, t3Var);
            } catch (UnsupportedOperationException unused) {
                y4.r.i("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override // f3.b0
    public void k(byte[] bArr) {
        this.f15702b.provideProvisionResponse(bArr);
    }

    @Override // f3.b0
    public b0.a l(byte[] bArr, List list, int i10, HashMap hashMap) {
        m.b bVar;
        byte[] bArr2;
        String str;
        int i11;
        if (list != null) {
            bVar = y(this.f15701a, list);
            bArr2 = s(this.f15701a, (byte[]) y4.a.e(bVar.f15722e));
            str = t(this.f15701a, bVar.f15721d);
        } else {
            bVar = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f15702b.getKeyRequest(bArr, bArr2, str, i10, hashMap);
        byte[] r10 = r(this.f15701a, keyRequest.getData());
        String q10 = q(keyRequest.getDefaultUrl());
        if (TextUtils.isEmpty(q10) && bVar != null && !TextUtils.isEmpty(bVar.f15720c)) {
            q10 = bVar.f15720c;
        }
        if (q0.f32946a >= 23) {
            i11 = keyRequest.getRequestType();
        } else {
            i11 = Integer.MIN_VALUE;
        }
        return new b0.a(r10, q10, i11);
    }

    @Override // f3.b0
    public int m() {
        return 2;
    }

    @Override // f3.b0
    public synchronized void release() {
        int i10 = this.f15703c - 1;
        this.f15703c = i10;
        if (i10 == 0) {
            this.f15702b.release();
        }
    }

    @Override // f3.b0
    /* renamed from: v */
    public c0 d(byte[] bArr) {
        boolean z10;
        if (q0.f32946a < 21 && b3.s.f4354d.equals(this.f15701a) && "L3".equals(x("securityLevel"))) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new c0(u(this.f15701a), bArr, z10);
    }

    public String x(String str) {
        return this.f15702b.getPropertyString(str);
    }
}
