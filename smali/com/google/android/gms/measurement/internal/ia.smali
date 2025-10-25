.class final Lcom/google/android/gms/measurement/internal/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/da;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/la;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/la;Lcom/google/android/gms/measurement/internal/da;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Lcom/google/android/gms/measurement/internal/da;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/ia;->b:J

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ia;->c:Lcom/google/android/gms/measurement/internal/la;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ia;->c:Lcom/google/android/gms/measurement/internal/la;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ia;->a:Lcom/google/android/gms/measurement/internal/da;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ia;->b:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/la;->C(Lcom/google/android/gms/measurement/internal/da;ZJ)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/vb;->u(Lcom/google/android/gms/measurement/internal/da;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
