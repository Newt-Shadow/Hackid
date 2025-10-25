package com.google.gson;

import com.google.gson.internal.e0;
import java.io.IOException;
import java.io.StringWriter;
/* loaded from: classes.dex */
public abstract class i {
    public boolean d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public f i() {
        if (o()) {
            return (f) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public l l() {
        if (r()) {
            return (l) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public n m() {
        if (s()) {
            return (n) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public String n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean o() {
        return this instanceof f;
    }

    public boolean p() {
        return this instanceof k;
    }

    public boolean r() {
        return this instanceof l;
    }

    public boolean s() {
        return this instanceof n;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            c9.c cVar = new c9.c(stringWriter);
            cVar.k0(t.LENIENT);
            e0.b(this, cVar);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
