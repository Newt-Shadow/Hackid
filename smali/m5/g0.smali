.class final Lm5/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm5/h0;


# direct methods
.method constructor <init>(Lm5/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/g0;->a:Lm5/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/g0;->a:Lm5/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lm5/h0;->a:Lm5/i0;

    .line 4
    .line 5
    invoke-static {v0}, Lm5/i0;->u(Lm5/i0;)Lcom/google/android/gms/common/api/a$f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Lm5/i0;->u(Lm5/i0;)Lcom/google/android/gms/common/api/a$f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, " disconnecting because it was signed out."

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
