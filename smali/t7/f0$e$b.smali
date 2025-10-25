.class public abstract Lt7/f0$e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lt7/f0$e;
.end method

.method public abstract b(Lt7/f0$e$a;)Lt7/f0$e$b;
.end method

.method public abstract c(Ljava/lang/String;)Lt7/f0$e$b;
.end method

.method public abstract d(Z)Lt7/f0$e$b;
.end method

.method public abstract e(Lt7/f0$e$c;)Lt7/f0$e$b;
.end method

.method public abstract f(Ljava/lang/Long;)Lt7/f0$e$b;
.end method

.method public abstract g(Ljava/util/List;)Lt7/f0$e$b;
.end method

.method public abstract h(Ljava/lang/String;)Lt7/f0$e$b;
.end method

.method public abstract i(I)Lt7/f0$e$b;
.end method

.method public abstract j(Ljava/lang/String;)Lt7/f0$e$b;
.end method

.method public k([B)Lt7/f0$e$b;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lt7/f0;->a()Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lt7/f0$e$b;->j(Ljava/lang/String;)Lt7/f0$e$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public abstract l(Lt7/f0$e$e;)Lt7/f0$e$b;
.end method

.method public abstract m(J)Lt7/f0$e$b;
.end method

.method public abstract n(Lt7/f0$e$f;)Lt7/f0$e$b;
.end method
