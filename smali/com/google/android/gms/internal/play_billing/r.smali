.class final Lcom/google/android/gms/internal/play_billing/r;
.super Lcom/google/android/gms/internal/play_billing/j;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/play_billing/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/r;->d:Lcom/google/android/gms/internal/play_billing/s;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r;->d:Lcom/google/android/gms/internal/play_billing/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s;->p(Lcom/google/android/gms/internal/play_billing/s;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "index"

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/b;->a(IILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r;->d:Lcom/google/android/gms/internal/play_billing/s;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s;->r(Lcom/google/android/gms/internal/play_billing/s;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    add-int/2addr p1, p1

    .line 19
    aget-object v0, v0, p1

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/r;->d:Lcom/google/android/gms/internal/play_billing/s;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/s;->r(Lcom/google/android/gms/internal/play_billing/s;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    aget-object p1, v1, p1

    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 38
    .line 39
    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/r;->d:Lcom/google/android/gms/internal/play_billing/s;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/s;->p(Lcom/google/android/gms/internal/play_billing/s;)I

    move-result v0

    return v0
.end method
