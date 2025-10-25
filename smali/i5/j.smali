.class final Li5/j;
.super Li5/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Li5/k;


# direct methods
.method constructor <init>(Li5/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li5/j;->a:Li5/k;

    .line 2
    .line 3
    invoke-direct {p0}, Li5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f0(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Li5/j;->a:Li5/k;

    .line 4
    .line 5
    iget-object v1, v0, Li5/k;->p:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Li5/r;->c(Landroid/content/Context;)Li5/r;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Li5/k;->q:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 12
    .line 13
    invoke-virtual {v1, v0, p1}, Li5/r;->e(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Li5/j;->a:Li5/k;

    .line 17
    .line 18
    new-instance v1, Lh5/b;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Lh5/b;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/k;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
