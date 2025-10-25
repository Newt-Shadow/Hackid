.class final Lcom/google/android/gms/measurement/internal/m7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/g0;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m7;->a:Lcom/google/android/gms/measurement/internal/g0;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/m7;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m7;->c:Lcom/google/android/gms/measurement/internal/y7;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m7;->c:Lcom/google/android/gms/measurement/internal/y7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/pd;->E()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m7;->a:Lcom/google/android/gms/measurement/internal/g0;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m7;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/pd;->i(Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
