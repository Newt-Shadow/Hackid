.class final Li5/k;
.super Li5/p;
.source "SourceFile"


# instance fields
.field final synthetic p:Landroid/content/Context;

.field final synthetic q:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    .line 1
    iput-object p2, p0, Li5/k;->p:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Li5/k;->q:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Li5/p;-><init>(Lcom/google/android/gms/common/api/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected final synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/k;
    .locals 2

    .line 1
    new-instance v0, Lh5/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lh5/b;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected final bridge synthetic k(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2

    .line 1
    check-cast p1, Li5/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Ln5/c;->D()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Li5/w;

    .line 8
    .line 9
    new-instance v0, Li5/j;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Li5/j;-><init>(Li5/k;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Li5/k;->q:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Li5/w;->h1(Li5/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
