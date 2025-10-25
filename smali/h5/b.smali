.class public Lh5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/k;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/b;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p2, p0, Lh5/b;->a:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/b;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/b;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
