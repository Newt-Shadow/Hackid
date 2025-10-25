package com.google.gson.internal;

import com.google.gson.internal.bind.TypeAdapters;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class e0 {
    public static com.google.gson.i a(c9.a aVar) {
        boolean z10;
        try {
            try {
                aVar.X();
                z10 = false;
            } catch (EOFException e10) {
                e = e10;
                z10 = true;
            }
            try {
                return (com.google.gson.i) TypeAdapters.V.c(aVar);
            } catch (EOFException e11) {
                e = e11;
                if (z10) {
                    return com.google.gson.k.f9349a;
                }
                throw new com.google.gson.q(e);
            }
        } catch (c9.d e12) {
            throw new com.google.gson.q(e12);
        } catch (IOException e13) {
            throw new com.google.gson.j(e13);
        } catch (NumberFormatException e14) {
            throw new com.google.gson.q(e14);
        }
    }

    public static void b(com.google.gson.i iVar, c9.c cVar) {
        TypeAdapters.V.e(cVar, iVar);
    }

    public static Writer c(Appendable appendable) {
        if (appendable instanceof Writer) {
            return (Writer) appendable;
        }
        return new b(appendable);
    }

    /* loaded from: classes.dex */
    private static final class b extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f9288a;

        /* renamed from: b  reason: collision with root package name */
        private final a f9289b = new a();

        /* loaded from: classes.dex */
        private static class a implements CharSequence {

            /* renamed from: a  reason: collision with root package name */
            private char[] f9290a;

            /* renamed from: b  reason: collision with root package name */
            private String f9291b;

            private a() {
            }

            void a(char[] cArr) {
                this.f9290a = cArr;
                this.f9291b = null;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i10) {
                return this.f9290a[i10];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f9290a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i10, int i11) {
                return new String(this.f9290a, i10, i11 - i10);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                if (this.f9291b == null) {
                    this.f9291b = new String(this.f9290a);
                }
                return this.f9291b;
            }
        }

        b(Appendable appendable) {
            this.f9288a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            this.f9289b.a(cArr);
            this.f9288a.append(this.f9289b, i10, i11 + i10);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) {
            this.f9288a.append(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(int i10) {
            this.f9288a.append((char) i10);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i10, int i11) {
            this.f9288a.append(charSequence, i10, i11);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i10, int i11) {
            Objects.requireNonNull(str);
            this.f9288a.append(str, i10, i11 + i10);
        }
    }
}
