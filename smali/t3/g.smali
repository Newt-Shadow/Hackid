.class public abstract Lt3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt3/d;)Lt3/a;
    .locals 2

    .line 1
    iget-object v0, p1, Le3/g;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-static {v1}, Ly4/a;->a(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Le3/a;->p()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0, p1, v0}, Lt3/g;->b(Lt3/d;Ljava/nio/ByteBuffer;)Lt3/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    return-object p1
.end method

.method protected abstract b(Lt3/d;Ljava/nio/ByteBuffer;)Lt3/a;
.end method
