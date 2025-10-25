package com.google.gson;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class TypeAdapter {

    /* loaded from: classes.dex */
    private final class NullSafeTypeAdapter extends TypeAdapter {
        private NullSafeTypeAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        public Object c(c9.a aVar) {
            if (aVar.X() == c9.b.NULL) {
                aVar.H();
                return null;
            }
            return TypeAdapter.this.c(aVar);
        }

        @Override // com.google.gson.TypeAdapter
        public void e(c9.c cVar, Object obj) {
            if (obj == null) {
                cVar.x();
            } else {
                TypeAdapter.this.e(cVar, obj);
            }
        }

        public String toString() {
            return "NullSafeTypeAdapter[" + TypeAdapter.this + "]";
        }
    }

    public final Object a(i iVar) {
        try {
            return c(new com.google.gson.internal.bind.a(iVar));
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public final TypeAdapter b() {
        if (!(this instanceof NullSafeTypeAdapter)) {
            return new NullSafeTypeAdapter();
        }
        return this;
    }

    public abstract Object c(c9.a aVar);

    public final i d(Object obj) {
        try {
            com.google.gson.internal.bind.b bVar = new com.google.gson.internal.bind.b();
            e(bVar, obj);
            return bVar.V0();
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public abstract void e(c9.c cVar, Object obj);
}
