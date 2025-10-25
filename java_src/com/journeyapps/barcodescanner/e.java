package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.journeyapps.barcodescanner.a;
import com.journeyapps.barcodescanner.e;
import d9.o;
import h9.h;
import h9.n;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class e {

    /* renamed from: o  reason: collision with root package name */
    private static final String f9435o = "e";

    /* renamed from: p  reason: collision with root package name */
    private static int f9436p = 250;

    /* renamed from: a  reason: collision with root package name */
    private Activity f9437a;

    /* renamed from: b  reason: collision with root package name */
    private DecoratedBarcodeView f9438b;

    /* renamed from: h  reason: collision with root package name */
    private h f9444h;

    /* renamed from: i  reason: collision with root package name */
    private h9.e f9445i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f9446j;

    /* renamed from: m  reason: collision with root package name */
    private final a.f f9449m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f9450n;

    /* renamed from: c  reason: collision with root package name */
    private int f9439c = -1;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9440d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9441e = true;

    /* renamed from: f  reason: collision with root package name */
    private String f9442f = "";

    /* renamed from: g  reason: collision with root package name */
    private boolean f9443g = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f9447k = false;

    /* renamed from: l  reason: collision with root package name */
    private xa.a f9448l = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements xa.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(xa.b bVar) {
            e.this.B(bVar);
        }

        @Override // xa.a
        public void a(final xa.b bVar) {
            e.this.f9438b.e();
            e.this.f9445i.f();
            e.this.f9446j.post(new Runnable() { // from class: com.journeyapps.barcodescanner.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.a.this.d(bVar);
                }
            });
        }

        @Override // xa.a
        public void b(List list) {
        }
    }

    /* loaded from: classes.dex */
    class b implements a.f {
        b() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void a() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void b(Exception exc) {
            e eVar = e.this;
            eVar.m(eVar.f9437a.getString(n.f16947c));
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void c() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void d() {
            if (e.this.f9447k) {
                Log.d(e.f9435o, "Camera closed; finishing activity");
                e.this.n();
            }
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void e() {
        }
    }

    public e(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        b bVar = new b();
        this.f9449m = bVar;
        this.f9450n = false;
        this.f9437a = activity;
        this.f9438b = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().i(bVar);
        this.f9446j = new Handler();
        this.f9444h = new h(activity, new Runnable() { // from class: xa.c
            @Override // java.lang.Runnable
            public final void run() {
                com.journeyapps.barcodescanner.e.this.s();
            }
        });
        this.f9445i = new h9.e(activity);
    }

    public static Intent A(xa.b bVar, String str) {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.addFlags(524288);
        intent.putExtra("SCAN_RESULT", bVar.toString());
        intent.putExtra("SCAN_RESULT_FORMAT", bVar.a().toString());
        byte[] c10 = bVar.c();
        if (c10 != null && c10.length > 0) {
            intent.putExtra("SCAN_RESULT_BYTES", c10);
        }
        Map d10 = bVar.d();
        if (d10 != null) {
            o oVar = o.UPC_EAN_EXTENSION;
            if (d10.containsKey(oVar)) {
                intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", d10.get(oVar).toString());
            }
            Number number = (Number) d10.get(o.ORIENTATION);
            if (number != null) {
                intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue());
            }
            String str2 = (String) d10.get(o.ERROR_CORRECTION_LEVEL);
            if (str2 != null) {
                intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str2);
            }
            Iterable<byte[]> iterable = (Iterable) d10.get(o.BYTE_SEGMENTS);
            if (iterable != null) {
                int i10 = 0;
                for (byte[] bArr : iterable) {
                    intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i10, bArr);
                    i10++;
                }
            }
        }
        if (str != null) {
            intent.putExtra("SCAN_RESULT_IMAGE_PATH", str);
        }
        return intent;
    }

    private void D() {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.putExtra("MISSING_CAMERA_PERMISSION", true);
        this.f9437a.setResult(0, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f9437a.finish();
    }

    private String o(xa.b bVar) {
        if (this.f9440d) {
            Bitmap b10 = bVar.b();
            try {
                File createTempFile = File.createTempFile("barcodeimage", ".jpg", this.f9437a.getCacheDir());
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                b10.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.close();
                return createTempFile.getAbsolutePath();
            } catch (IOException e10) {
                String str = f9435o;
                Log.w(str, "Unable to create temporary file and store bitmap! " + e10);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(DialogInterface dialogInterface, int i10) {
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(DialogInterface dialogInterface) {
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        Log.d(f9435o, "Finishing due to inactivity");
        n();
    }

    private void z() {
        if (androidx.core.content.a.a(this.f9437a, "android.permission.CAMERA") == 0) {
            this.f9438b.g();
        } else if (!this.f9450n) {
            androidx.core.app.b.v(this.f9437a, new String[]{"android.permission.CAMERA"}, f9436p);
            this.f9450n = true;
        }
    }

    protected void B(xa.b bVar) {
        this.f9437a.setResult(-1, A(bVar, o(bVar)));
        k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C() {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.putExtra("TIMEOUT", true);
        this.f9437a.setResult(0, intent);
        k();
    }

    public void E(boolean z10, String str) {
        this.f9441e = z10;
        if (str == null) {
            str = "";
        }
        this.f9442f = str;
    }

    protected void k() {
        if (this.f9438b.getBarcodeView().s()) {
            n();
        } else {
            this.f9447k = true;
        }
        this.f9438b.e();
        this.f9444h.d();
    }

    public void l() {
        this.f9438b.b(this.f9448l);
    }

    protected void m(String str) {
        if (!this.f9437a.isFinishing() && !this.f9443g && !this.f9447k) {
            if (str.isEmpty()) {
                str = this.f9437a.getString(n.f16947c);
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f9437a);
            builder.setTitle(this.f9437a.getString(n.f16945a));
            builder.setMessage(str);
            builder.setPositiveButton(n.f16946b, new DialogInterface.OnClickListener() { // from class: xa.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    com.journeyapps.barcodescanner.e.this.q(dialogInterface, i10);
                }
            });
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: xa.e
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    com.journeyapps.barcodescanner.e.this.r(dialogInterface);
                }
            });
            builder.show();
        }
    }

    public void p(Intent intent, Bundle bundle) {
        this.f9437a.getWindow().addFlags(128);
        if (bundle != null) {
            this.f9439c = bundle.getInt("SAVED_ORIENTATION_LOCK", -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true)) {
                t();
            }
            if ("com.google.zxing.client.android.SCAN".equals(intent.getAction())) {
                this.f9438b.d(intent);
            }
            if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                this.f9445i.g(false);
            }
            if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                E(intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true), intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE"));
            }
            if (intent.hasExtra("TIMEOUT")) {
                this.f9446j.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.this.C();
                    }
                }, intent.getLongExtra("TIMEOUT", 0L));
            }
            if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                this.f9440d = true;
            }
        }
    }

    protected void t() {
        if (this.f9439c == -1) {
            int rotation = this.f9437a.getWindowManager().getDefaultDisplay().getRotation();
            int i10 = this.f9437a.getResources().getConfiguration().orientation;
            int i11 = 0;
            if (i10 == 2) {
                if (rotation != 0 && rotation != 1) {
                    i11 = 8;
                }
            } else if (i10 == 1) {
                i11 = (rotation == 0 || rotation == 3) ? 1 : 9;
            }
            this.f9439c = i11;
        }
        this.f9437a.setRequestedOrientation(this.f9439c);
    }

    public void u() {
        this.f9443g = true;
        this.f9444h.d();
        this.f9446j.removeCallbacksAndMessages(null);
    }

    public void v() {
        this.f9444h.d();
        this.f9438b.f();
    }

    public void w(int i10, String[] strArr, int[] iArr) {
        if (i10 == f9436p) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.f9438b.g();
                return;
            }
            D();
            if (this.f9441e) {
                m(this.f9442f);
            } else {
                k();
            }
        }
    }

    public void x() {
        z();
        this.f9444h.h();
    }

    public void y(Bundle bundle) {
        bundle.putInt("SAVED_ORIENTATION_LOCK", this.f9439c);
    }
}
