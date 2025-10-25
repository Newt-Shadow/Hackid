.class final Lcom/google/android/gms/measurement/internal/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/measurement/internal/w9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/y8;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/y8;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/y8;->d:Z

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y8;->e:Lcom/google/android/gms/measurement/internal/w9;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/y8;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y8;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/y8;->d:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->e:Lcom/google/android/gms/measurement/internal/w9;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/vb;->g0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
