.class final Lcom/google/android/gms/internal/measurement/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/j;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/z4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/j;Lcom/google/android/gms/internal/measurement/z4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a0;->a:Lcom/google/android/gms/internal/measurement/j;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/a0;->b:Lcom/google/android/gms/internal/measurement/z4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 2
    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/u;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    instance-of p1, p2, Lcom/google/android/gms/internal/measurement/u;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/u;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a0;->a:Lcom/google/android/gms/internal/measurement/j;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/a0;->b:Lcom/google/android/gms/internal/measurement/z4;

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/p;

    .line 44
    .line 45
    aput-object p1, v4, v2

    .line 46
    .line 47
    aput-object p2, v4, v1

    .line 48
    .line 49
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    double-to-int v1, p1

    .line 70
    :goto_0
    return v1
.end method
