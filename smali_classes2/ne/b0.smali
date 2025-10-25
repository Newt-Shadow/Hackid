.class public abstract Lne/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/b0$a;,
        Lne/b0$b;
    }
.end annotation


# static fields
.field public static final b:Lne/b0$b;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lne/b0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lne/b0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lne/b0;->b:Lne/b0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lne/b0;->e()Lne/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lne/v;->c(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/Reader;
    .locals 3

    .line 1
    iget-object v0, p0, Lne/b0;->a:Ljava/io/Reader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lne/b0$a;

    .line 6
    .line 7
    invoke-virtual {p0}, Lne/b0;->f()Laf/f;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0}, Lne/b0;->b()Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lne/b0$a;-><init>(Laf/f;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lne/b0;->a:Ljava/io/Reader;

    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method public abstract c()J
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lne/b0;->f()Laf/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Loe/d;->l(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract e()Lne/v;
.end method

.method public abstract f()Laf/f;
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lne/b0;->f()Laf/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lne/b0;->b()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Loe/d;->H(Laf/f;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Laf/f;->h0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v2}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :catchall_1
    move-exception v2

    .line 25
    invoke-static {v0, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v2
.end method
