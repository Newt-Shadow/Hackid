package tb;

import android.database.sqlite.SQLiteProgram;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f30536a;

    /* renamed from: b  reason: collision with root package name */
    private final List f30537b;

    public c0(String str, List list) {
        this.f30536a = str;
        this.f30537b = list == null ? new ArrayList() : list;
    }

    private Object[] e(List list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Object obj : list) {
                arrayList.add(f(obj));
            }
        }
        return arrayList.toArray(new Object[0]);
    }

    private static Object f(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            byte[] bArr = new byte[list.size()];
            for (int i10 = 0; i10 < list.size(); i10++) {
                bArr[i10] = (byte) ((Integer) list.get(i10)).intValue();
            }
            return bArr;
        }
        return obj;
    }

    public void a(SQLiteProgram sQLiteProgram) {
        long j10;
        List list = this.f30537b;
        if (list != null) {
            int size = list.size();
            int i10 = 0;
            while (i10 < size) {
                Object f10 = f(this.f30537b.get(i10));
                int i11 = i10 + 1;
                if (f10 == null) {
                    sQLiteProgram.bindNull(i11);
                } else if (f10 instanceof byte[]) {
                    sQLiteProgram.bindBlob(i11, (byte[]) f10);
                } else if (f10 instanceof Double) {
                    sQLiteProgram.bindDouble(i11, ((Double) f10).doubleValue());
                } else if (f10 instanceof Integer) {
                    sQLiteProgram.bindLong(i11, ((Integer) f10).intValue());
                } else if (f10 instanceof Long) {
                    sQLiteProgram.bindLong(i11, ((Long) f10).longValue());
                } else if (f10 instanceof String) {
                    sQLiteProgram.bindString(i11, (String) f10);
                } else if (f10 instanceof Boolean) {
                    if (((Boolean) f10).booleanValue()) {
                        j10 = 1;
                    } else {
                        j10 = 0;
                    }
                    sQLiteProgram.bindLong(i11, j10);
                } else {
                    throw new IllegalArgumentException("Could not bind " + f10 + " from index " + i10 + ": Supported types are null, byte[], double, long, boolean and String");
                }
                i10 = i11;
            }
        }
    }

    public List b() {
        return this.f30537b;
    }

    public String c() {
        return this.f30536a;
    }

    public Object[] d() {
        return e(this.f30537b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        String str = this.f30536a;
        if (str != null) {
            if (!str.equals(c0Var.f30536a)) {
                return false;
            }
        } else if (c0Var.f30536a != null) {
            return false;
        }
        if (this.f30537b.size() != c0Var.f30537b.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f30537b.size(); i10++) {
            if ((this.f30537b.get(i10) instanceof byte[]) && (c0Var.f30537b.get(i10) instanceof byte[])) {
                if (!Arrays.equals((byte[]) this.f30537b.get(i10), (byte[]) c0Var.f30537b.get(i10))) {
                    return false;
                }
            } else if (!this.f30537b.get(i10).equals(c0Var.f30537b.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30536a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f30536a);
        List list = this.f30537b;
        if (list != null && !list.isEmpty()) {
            str = StringUtils.SPACE + this.f30537b;
        } else {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }
}
