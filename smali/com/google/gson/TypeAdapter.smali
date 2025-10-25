.class public abstract Lcom/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/TypeAdapter$NullSafeTypeAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/internal/bind/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/gson/internal/bind/a;-><init>(Lcom/google/gson/i;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/gson/TypeAdapter;->c(Lc9/a;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lcom/google/gson/j;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final b()Lcom/google/gson/TypeAdapter;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/gson/TypeAdapter$NullSafeTypeAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/gson/TypeAdapter$NullSafeTypeAdapter;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/gson/TypeAdapter$NullSafeTypeAdapter;-><init>(Lcom/google/gson/TypeAdapter;Lcom/google/gson/TypeAdapter$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    return-object p0
.end method

.method public abstract c(Lc9/a;)Ljava/lang/Object;
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/gson/i;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/internal/bind/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/internal/bind/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/TypeAdapter;->e(Lc9/c;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/gson/internal/bind/b;->V0()Lcom/google/gson/i;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/google/gson/j;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public abstract e(Lc9/c;Ljava/lang/Object;)V
.end method
