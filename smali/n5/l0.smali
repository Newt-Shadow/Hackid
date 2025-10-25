.class final Ln5/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/h$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/h;

.field final synthetic b:Lm6/l;

.field final synthetic c:Ln5/p$a;

.field final synthetic d:Ln5/n0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/h;Lm6/l;Ln5/p$a;Ln5/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/l0;->a:Lcom/google/android/gms/common/api/h;

    iput-object p2, p0, Ln5/l0;->b:Lm6/l;

    iput-object p3, p0, Ln5/l0;->c:Ln5/p$a;

    iput-object p4, p0, Ln5/l0;->d:Ln5/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ln5/l0;->a:Lcom/google/android/gms/common/api/h;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/h;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/k;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Ln5/l0;->b:Lm6/l;

    .line 18
    .line 19
    iget-object v1, p0, Ln5/l0;->c:Ln5/p$a;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ln5/p$a;->a(Lcom/google/android/gms/common/api/k;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Ln5/l0;->b:Lm6/l;

    .line 30
    .line 31
    invoke-static {p1}, Ln5/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
