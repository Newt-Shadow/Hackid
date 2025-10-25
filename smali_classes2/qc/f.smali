.class public final synthetic Lqc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lqc/m;

.field public final synthetic b:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method public synthetic constructor <init>(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/f;->a:Lqc/m;

    iput-object p2, p0, Lqc/f;->b:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lqc/f;->a:Lqc/m;

    iget-object v1, p0, Lqc/f;->b:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-static {v0, v1}, Lqc/m;->k(Lqc/m;Lcom/google/android/gms/auth/api/credentials/Credential;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
