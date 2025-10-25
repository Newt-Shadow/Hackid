.class final Li5/m;
.super Li5/p;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li5/p;-><init>(Lcom/google/android/gms/common/api/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final bridge synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/k;
    .locals 0

    .line 1
    return-object p1
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
    move-result-object v0

    .line 7
    check-cast v0, Li5/w;

    .line 8
    .line 9
    new-instance v1, Li5/l;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Li5/l;-><init>(Li5/m;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Li5/i;->m0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Li5/w;->g1(Li5/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
