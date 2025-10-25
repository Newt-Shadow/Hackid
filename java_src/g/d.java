package g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.provider.MediaStore;
import g.a;
import g.f;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import yc.o;
/* loaded from: classes.dex */
public class d extends g.a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f16072b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f16073a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            int pickImagesMaxLimit;
            if (f.f16074a.d()) {
                pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
                return pickImagesMaxLimit;
            }
            return Integer.MAX_VALUE;
        }
    }

    public d(int i10) {
        this.f16073a = i10;
        if (i10 > 1) {
            return;
        }
        throw new IllegalArgumentException("Max items must be higher than 1".toString());
    }

    @Override // g.a
    /* renamed from: d */
    public Intent a(Context context, f.h input) {
        int pickImagesMaxLimit;
        m.e(context, "context");
        m.e(input, "input");
        f.a aVar = f.f16074a;
        boolean z10 = false;
        if (aVar.d()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(aVar.b(input.d()));
            int min = Math.min(this.f16073a, input.c());
            if (min > 1) {
                pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
                if (min <= pickImagesMaxLimit) {
                    z10 = true;
                }
            }
            if (z10) {
                intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", min);
                intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
                intent.putExtra("android.provider.extra.PICK_IMAGES_IN_ORDER", input.f());
                if (input.e()) {
                    intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
                    return intent;
                }
                return intent;
            }
            throw new IllegalArgumentException("Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()".toString());
        } else if (aVar.c(context)) {
            ResolveInfo a10 = aVar.a(context);
            if (a10 != null) {
                ActivityInfo activityInfo = a10.activityInfo;
                Intent intent2 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
                intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                intent2.setType(aVar.b(input.d()));
                int min2 = Math.min(this.f16073a, input.c());
                if (min2 > 1) {
                    z10 = true;
                }
                if (z10) {
                    intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_MAX", min2);
                    intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
                    intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER", input.f());
                    if (input.e()) {
                        intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
                    }
                    return intent2;
                }
                throw new IllegalArgumentException("Max items must be greater than 1".toString());
            }
            throw new IllegalStateException("Required value was null.".toString());
        } else {
            Intent intent3 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent3.setType(aVar.b(input.d()));
            intent3.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            if (intent3.getType() == null) {
                intent3.setType("*/*");
                intent3.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
                return intent3;
            }
            return intent3;
        }
    }

    @Override // g.a
    /* renamed from: e */
    public final a.C0170a b(Context context, f.h input) {
        m.e(context, "context");
        m.e(input, "input");
        return null;
    }

    @Override // g.a
    /* renamed from: f */
    public final List c(int i10, Intent intent) {
        boolean z10;
        List h10;
        List a10;
        if (i10 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            intent = null;
        }
        if (intent == null || (a10 = b.f16071a.a(intent)) == null) {
            h10 = o.h();
            return h10;
        }
        return a10;
    }
}
