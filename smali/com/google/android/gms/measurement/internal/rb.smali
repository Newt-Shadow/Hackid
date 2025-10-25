.class final synthetic Lcom/google/android/gms/measurement/internal/rb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/vb;

.field private final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/ae;

.field private final synthetic d:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/rb;->a:Lcom/google/android/gms/measurement/internal/vb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/rb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/rb;->c:Lcom/google/android/gms/measurement/internal/ae;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/rb;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/rb;->a:Lcom/google/android/gms/measurement/internal/vb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/rb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/rb;->c:Lcom/google/android/gms/measurement/internal/ae;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/rb;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/vb;->G(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;)V

    return-void
.end method
