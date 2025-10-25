.class final synthetic Lcom/google/android/gms/measurement/internal/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/w9;

.field private final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v9;->a:Lcom/google/android/gms/measurement/internal/w9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v9;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Li6/d0;->e:Li6/d0;

    .line 10
    .line 11
    filled-new-array {v1}, [Li6/d0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Li6/g0;->g([Li6/d0;)Li6/g0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v9;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/vb;->j0(Ljava/util/concurrent/atomic/AtomicReference;Li6/g0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
