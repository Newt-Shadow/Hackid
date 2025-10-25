package x4;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes.dex */
public final class n0 extends f {

    /* renamed from: e  reason: collision with root package name */
    private final int f32392e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f32393f;

    /* renamed from: g  reason: collision with root package name */
    private final DatagramPacket f32394g;

    /* renamed from: h  reason: collision with root package name */
    private Uri f32395h;

    /* renamed from: i  reason: collision with root package name */
    private DatagramSocket f32396i;

    /* renamed from: j  reason: collision with root package name */
    private MulticastSocket f32397j;

    /* renamed from: k  reason: collision with root package name */
    private InetAddress f32398k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f32399l;

    /* renamed from: m  reason: collision with root package name */
    private int f32400m;

    /* loaded from: classes.dex */
    public static final class a extends k {
        public a(Throwable th, int i10) {
            super(th, i10);
        }
    }

    public n0() {
        this(2000);
    }

    @Override // x4.j
    public void close() {
        this.f32395h = null;
        MulticastSocket multicastSocket = this.f32397j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) y4.a.e(this.f32398k));
            } catch (IOException unused) {
            }
            this.f32397j = null;
        }
        DatagramSocket datagramSocket = this.f32396i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f32396i = null;
        }
        this.f32398k = null;
        this.f32400m = 0;
        if (this.f32399l) {
            this.f32399l = false;
            r();
        }
    }

    @Override // x4.j
    public long i(n nVar) {
        Uri uri = nVar.f32371a;
        this.f32395h = uri;
        String str = (String) y4.a.e(uri.getHost());
        int port = this.f32395h.getPort();
        s(nVar);
        try {
            this.f32398k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f32398k, port);
            if (this.f32398k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f32397j = multicastSocket;
                multicastSocket.joinGroup(this.f32398k);
                this.f32396i = this.f32397j;
            } else {
                this.f32396i = new DatagramSocket(inetSocketAddress);
            }
            this.f32396i.setSoTimeout(this.f32392e);
            this.f32399l = true;
            t(nVar);
            return -1L;
        } catch (IOException e10) {
            throw new a(e10, 2001);
        } catch (SecurityException e11) {
            throw new a(e11, 2006);
        }
    }

    @Override // x4.j
    public Uri o() {
        return this.f32395h;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        if (this.f32400m == 0) {
            try {
                ((DatagramSocket) y4.a.e(this.f32396i)).receive(this.f32394g);
                int length = this.f32394g.getLength();
                this.f32400m = length;
                q(length);
            } catch (SocketTimeoutException e10) {
                throw new a(e10, 2002);
            } catch (IOException e11) {
                throw new a(e11, 2001);
            }
        }
        int length2 = this.f32394g.getLength();
        int i12 = this.f32400m;
        int min = Math.min(i12, i11);
        System.arraycopy(this.f32393f, length2 - i12, bArr, i10, min);
        this.f32400m -= min;
        return min;
    }

    public n0(int i10) {
        this(i10, 8000);
    }

    public n0(int i10, int i11) {
        super(true);
        this.f32392e = i11;
        byte[] bArr = new byte[i10];
        this.f32393f = bArr;
        this.f32394g = new DatagramPacket(bArr, 0, i10);
    }
}
