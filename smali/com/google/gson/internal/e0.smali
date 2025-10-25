.class public abstract Lcom/google/gson/internal/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/e0$b;
    }
.end annotation


# direct methods
.method public static a(Lc9/a;)Lcom/google/gson/i;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lc9/a;->X()Lc9/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lc9/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_1
    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->V:Lcom/google/gson/TypeAdapter;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lcom/google/gson/TypeAdapter;->c(Lc9/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/google/gson/i;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc9/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    new-instance v0, Lcom/google/gson/q;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :catch_2
    move-exception p0

    .line 24
    new-instance v0, Lcom/google/gson/j;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :catch_3
    move-exception p0

    .line 31
    new-instance v0, Lcom/google/gson/q;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :catch_4
    move-exception p0

    .line 38
    const/4 v0, 0x1

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    .line 41
    sget-object p0, Lcom/google/gson/k;->a:Lcom/google/gson/k;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lcom/google/gson/q;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/google/gson/q;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public static b(Lcom/google/gson/i;Lc9/c;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->V:Lcom/google/gson/TypeAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->e(Lc9/c;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/io/Writer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/io/Writer;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/gson/internal/e0$b;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/gson/internal/e0$b;-><init>(Ljava/lang/Appendable;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method
