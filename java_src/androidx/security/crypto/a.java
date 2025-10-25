package androidx.security.crypto;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import s6.l;
import s6.m;
import s6.n;
import z6.a;
/* loaded from: classes.dex */
public final class a implements SharedPreferences {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f3431a;

    /* renamed from: b  reason: collision with root package name */
    final CopyOnWriteArrayList f3432b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    final String f3433c;

    /* renamed from: d  reason: collision with root package name */
    final String f3434d;

    /* renamed from: e  reason: collision with root package name */
    final s6.a f3435e;

    /* renamed from: f  reason: collision with root package name */
    final s6.e f3436f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.security.crypto.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0057a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3437a;

        static {
            int[] iArr = new int[c.values().length];
            f3437a = iArr;
            try {
                iArr[c.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3437a[c.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3437a[c.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3437a[c.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3437a[c.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3437a[c.STRING_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements SharedPreferences.Editor {

        /* renamed from: a  reason: collision with root package name */
        private final a f3438a;

        /* renamed from: b  reason: collision with root package name */
        private final SharedPreferences.Editor f3439b;

        /* renamed from: d  reason: collision with root package name */
        private final AtomicBoolean f3441d = new AtomicBoolean(false);

        /* renamed from: c  reason: collision with root package name */
        private final List f3440c = new CopyOnWriteArrayList();

        b(a aVar, SharedPreferences.Editor editor) {
            this.f3438a = aVar;
            this.f3439b = editor;
        }

        private void a() {
            if (this.f3441d.getAndSet(false)) {
                for (String str : this.f3438a.getAll().keySet()) {
                    if (!this.f3440c.contains(str) && !this.f3438a.g(str)) {
                        this.f3439b.remove(this.f3438a.d(str));
                    }
                }
            }
        }

        private void b() {
            Iterator it = this.f3438a.f3432b.iterator();
            while (it.hasNext()) {
                SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = (SharedPreferences.OnSharedPreferenceChangeListener) it.next();
                for (String str : this.f3440c) {
                    onSharedPreferenceChangeListener.onSharedPreferenceChanged(this.f3438a, str);
                }
            }
        }

        private void c(String str, byte[] bArr) {
            if (!this.f3438a.g(str)) {
                this.f3440c.add(str);
                if (str == null) {
                    str = "__NULL__";
                }
                try {
                    Pair e10 = this.f3438a.e(str, bArr);
                    this.f3439b.putString((String) e10.first, (String) e10.second);
                    return;
                } catch (GeneralSecurityException e11) {
                    throw new SecurityException("Could not encrypt data: " + e11.getMessage(), e11);
                }
            }
            throw new SecurityException(str + " is a reserved key for the encryption keyset.");
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            a();
            this.f3439b.apply();
            b();
            this.f3440c.clear();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f3441d.set(true);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            a();
            try {
                return this.f3439b.commit();
            } finally {
                b();
                this.f3440c.clear();
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z10) {
            ByteBuffer allocate = ByteBuffer.allocate(5);
            allocate.putInt(c.BOOLEAN.f());
            allocate.put(z10 ? (byte) 1 : (byte) 0);
            c(str, allocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f10) {
            ByteBuffer allocate = ByteBuffer.allocate(8);
            allocate.putInt(c.FLOAT.f());
            allocate.putFloat(f10);
            c(str, allocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i10) {
            ByteBuffer allocate = ByteBuffer.allocate(8);
            allocate.putInt(c.INT.f());
            allocate.putInt(i10);
            c(str, allocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j10) {
            ByteBuffer allocate = ByteBuffer.allocate(12);
            allocate.putInt(c.LONG.f());
            allocate.putLong(j10);
            c(str, allocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            if (str2 == null) {
                str2 = "__NULL__";
            }
            byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
            int length = bytes.length;
            ByteBuffer allocate = ByteBuffer.allocate(length + 8);
            allocate.putInt(c.STRING.f());
            allocate.putInt(length);
            allocate.put(bytes);
            c(str, allocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set set) {
            if (set == null) {
                set = new r.b();
                set.add("__NULL__");
            }
            ArrayList<byte[]> arrayList = new ArrayList(set.size());
            int size = set.size() * 4;
            for (String str2 : set) {
                byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
                arrayList.add(bytes);
                size += bytes.length;
            }
            ByteBuffer allocate = ByteBuffer.allocate(size + 4);
            allocate.putInt(c.STRING_SET.f());
            for (byte[] bArr : arrayList) {
                allocate.putInt(bArr.length);
                allocate.put(bArr);
            }
            c(str, allocate.array());
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            if (!this.f3438a.g(str)) {
                this.f3439b.remove(this.f3438a.d(str));
                this.f3440c.add(str);
                return this;
            }
            throw new SecurityException(str + " is a reserved key for the encryption keyset.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum c {
        STRING(0),
        STRING_SET(1),
        INT(2),
        LONG(3),
        FLOAT(4),
        BOOLEAN(5);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3449a;

        c(int i10) {
            this.f3449a = i10;
        }

        public static c b(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 != 5) {
                                    return null;
                                }
                                return BOOLEAN;
                            }
                            return FLOAT;
                        }
                        return LONG;
                    }
                    return INT;
                }
                return STRING_SET;
            }
            return STRING;
        }

        public int f() {
            return this.f3449a;
        }
    }

    /* loaded from: classes.dex */
    public enum d {
        AES256_SIV("AES256_SIV");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3452a;

        d(String str) {
            this.f3452a = str;
        }

        l b() {
            return m.a(this.f3452a);
        }
    }

    /* loaded from: classes.dex */
    public enum e {
        AES256_GCM("AES256_GCM");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3455a;

        e(String str) {
            this.f3455a = str;
        }

        l b() {
            return m.a(this.f3455a);
        }
    }

    a(String str, String str2, SharedPreferences sharedPreferences, s6.a aVar, s6.e eVar) {
        this.f3433c = str;
        this.f3431a = sharedPreferences;
        this.f3434d = str2;
        this.f3435e = aVar;
        this.f3436f = eVar;
    }

    public static SharedPreferences a(Context context, String str, androidx.security.crypto.c cVar, d dVar, e eVar) {
        return b(str, cVar.a(), context, dVar, eVar);
    }

    public static SharedPreferences b(String str, String str2, Context context, d dVar, e eVar) {
        y6.b.a();
        t6.a.b();
        Context applicationContext = context.getApplicationContext();
        a.b n10 = new a.b().l(dVar.b()).n(applicationContext, "__androidx_security_crypto_encrypted_prefs_key_keyset__", str);
        n d10 = n10.m("android-keystore://" + str2).f().d();
        a.b n11 = new a.b().l(eVar.b()).n(applicationContext, "__androidx_security_crypto_encrypted_prefs_value_keyset__", str);
        n d11 = n11.m("android-keystore://" + str2).f().d();
        s6.e eVar2 = (s6.e) d10.k(s6.e.class);
        return new a(str, str2, applicationContext.getSharedPreferences(str, 0), (s6.a) d11.k(s6.a.class), eVar2);
    }

    private Object f(String str) {
        if (!g(str)) {
            if (str == null) {
                str = "__NULL__";
            }
            try {
                String d10 = d(str);
                String string = this.f3431a.getString(d10, null);
                if (string == null) {
                    return null;
                }
                boolean z10 = false;
                ByteBuffer wrap = ByteBuffer.wrap(this.f3435e.b(f7.e.a(string, 0), d10.getBytes(StandardCharsets.UTF_8)));
                wrap.position(0);
                int i10 = wrap.getInt();
                c b10 = c.b(i10);
                if (b10 != null) {
                    switch (C0057a.f3437a[b10.ordinal()]) {
                        case 1:
                            int i11 = wrap.getInt();
                            ByteBuffer slice = wrap.slice();
                            wrap.limit(i11);
                            String charBuffer = StandardCharsets.UTF_8.decode(slice).toString();
                            if (charBuffer.equals("__NULL__")) {
                                return null;
                            }
                            return charBuffer;
                        case 2:
                            return Integer.valueOf(wrap.getInt());
                        case 3:
                            return Long.valueOf(wrap.getLong());
                        case 4:
                            return Float.valueOf(wrap.getFloat());
                        case 5:
                            if (wrap.get() != 0) {
                                z10 = true;
                            }
                            return Boolean.valueOf(z10);
                        case 6:
                            r.b bVar = new r.b();
                            while (wrap.hasRemaining()) {
                                int i12 = wrap.getInt();
                                ByteBuffer slice2 = wrap.slice();
                                slice2.limit(i12);
                                wrap.position(wrap.position() + i12);
                                bVar.add(StandardCharsets.UTF_8.decode(slice2).toString());
                            }
                            if (bVar.size() == 1 && "__NULL__".equals(bVar.t(0))) {
                                return null;
                            }
                            return bVar;
                        default:
                            throw new SecurityException("Unhandled type for encrypted pref value: " + b10);
                    }
                }
                throw new SecurityException("Unknown type ID for encrypted pref value: " + i10);
            } catch (GeneralSecurityException e10) {
                throw new SecurityException("Could not decrypt value. " + e10.getMessage(), e10);
            }
        }
        throw new SecurityException(str + " is a reserved key for the encryption keyset.");
    }

    String c(String str) {
        try {
            String str2 = new String(this.f3436f.b(f7.e.a(str, 0), this.f3433c.getBytes()), StandardCharsets.UTF_8);
            if (str2.equals("__NULL__")) {
                return null;
            }
            return str2;
        } catch (GeneralSecurityException e10) {
            throw new SecurityException("Could not decrypt key. " + e10.getMessage(), e10);
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        if (!g(str)) {
            return this.f3431a.contains(d(str));
        }
        throw new SecurityException(str + " is a reserved key for the encryption keyset.");
    }

    String d(String str) {
        if (str == null) {
            str = "__NULL__";
        }
        try {
            return f7.e.d(this.f3436f.a(str.getBytes(StandardCharsets.UTF_8), this.f3433c.getBytes()));
        } catch (GeneralSecurityException e10) {
            throw new SecurityException("Could not encrypt key. " + e10.getMessage(), e10);
        }
    }

    Pair e(String str, byte[] bArr) {
        String d10 = d(str);
        return new Pair(d10, f7.e.d(this.f3435e.a(bArr, d10.getBytes(StandardCharsets.UTF_8))));
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new b(this, this.f3431a.edit());
    }

    boolean g(String str) {
        if (!"__androidx_security_crypto_encrypted_prefs_key_keyset__".equals(str) && !"__androidx_security_crypto_encrypted_prefs_value_keyset__".equals(str)) {
            return false;
        }
        return true;
    }

    @Override // android.content.SharedPreferences
    public Map getAll() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : this.f3431a.getAll().entrySet()) {
            if (!g(entry.getKey())) {
                String c10 = c(entry.getKey());
                hashMap.put(c10, f(c10));
            }
        }
        return hashMap;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        Object f10 = f(str);
        if (f10 instanceof Boolean) {
            return ((Boolean) f10).booleanValue();
        }
        return z10;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        Object f11 = f(str);
        if (f11 instanceof Float) {
            return ((Float) f11).floatValue();
        }
        return f10;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i10) {
        Object f10 = f(str);
        if (f10 instanceof Integer) {
            return ((Integer) f10).intValue();
        }
        return i10;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j10) {
        Object f10 = f(str);
        if (f10 instanceof Long) {
            return ((Long) f10).longValue();
        }
        return j10;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        Object f10 = f(str);
        if (f10 instanceof String) {
            return (String) f10;
        }
        return str2;
    }

    @Override // android.content.SharedPreferences
    public Set getStringSet(String str, Set set) {
        Set bVar;
        Object f10 = f(str);
        if (f10 instanceof Set) {
            bVar = (Set) f10;
        } else {
            bVar = new r.b();
        }
        if (bVar.size() > 0) {
            return bVar;
        }
        return set;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f3432b.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f3432b.remove(onSharedPreferenceChangeListener);
    }
}
