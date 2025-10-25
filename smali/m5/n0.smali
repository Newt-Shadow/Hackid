.class public final Lm5/n0;
.super Lm5/b0;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/gms/common/api/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/e;)V
    .locals 1

    .line 1
    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lm5/b0;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lm5/n0;->c:Lcom/google/android/gms/common/api/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/n0;->c:Lcom/google/android/gms/common/api/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/e;->h(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/n0;->c:Lcom/google/android/gms/common/api/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/e;->m(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final d()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/n0;->c:Lcom/google/android/gms/common/api/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->t()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
