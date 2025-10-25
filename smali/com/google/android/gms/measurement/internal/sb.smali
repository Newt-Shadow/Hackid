.class final synthetic Lcom/google/android/gms/measurement/internal/sb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/vb;

.field private final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/ae;

.field private final synthetic d:Li6/g0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Li6/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/sb;->a:Lcom/google/android/gms/measurement/internal/vb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/sb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/sb;->c:Lcom/google/android/gms/measurement/internal/ae;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/sb;->d:Li6/g0;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sb;->a:Lcom/google/android/gms/measurement/internal/vb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/sb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/sb;->c:Lcom/google/android/gms/measurement/internal/ae;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/sb;->d:Li6/g0;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/vb;->H(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/ae;Li6/g0;)V

    return-void
.end method
