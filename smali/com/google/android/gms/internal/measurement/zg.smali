.class public final Lcom/google/android/gms/internal/measurement/zg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/TreeMap;

.field final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/TreeMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zg;->a:Ljava/util/TreeMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/TreeMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zg;->b:Ljava/util/TreeMap;

    .line 17
    .line 18
    return-void
.end method

.method private static final c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/o;Lcom/google/android/gms/internal/measurement/p;)I
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/o;->a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/i;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(D)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, -0x1

    .line 27
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/o;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "create"

    .line 2
    .line 3
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zg;->b:Ljava/util/TreeMap;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "edit"

    .line 13
    .line 14
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zg;->a:Ljava/util/TreeMap;

    .line 21
    .line 22
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-virtual {p1, p4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string p3, "Unknown callback type: "

    .line 59
    .line 60
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/c;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ca;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/measurement/ca;-><init>(Lcom/google/android/gms/internal/measurement/c;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zg;->a:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/c;->c()Lcom/google/android/gms/internal/measurement/b;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/b;->g()Lcom/google/android/gms/internal/measurement/b;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/google/android/gms/internal/measurement/o;

    .line 41
    .line 42
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/zg;->c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/o;Lcom/google/android/gms/internal/measurement/p;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v5, 0x2

    .line 47
    if-eq v3, v5, :cond_1

    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    if-ne v3, v5, :cond_0

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/measurement/c;->d(Lcom/google/android/gms/internal/measurement/b;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zg;->b:Ljava/util/TreeMap;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/google/android/gms/internal/measurement/o;

    .line 83
    .line 84
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zg;->c(Lcom/google/android/gms/internal/measurement/z4;Lcom/google/android/gms/internal/measurement/o;Lcom/google/android/gms/internal/measurement/p;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    return-void
.end method
