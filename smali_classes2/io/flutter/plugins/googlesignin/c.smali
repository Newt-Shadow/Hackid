.class public final synthetic Lio/flutter/plugins/googlesignin/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic c:Lio/flutter/plugins/googlesignin/Messages$Result;

.field public final synthetic d:Lcom/google/android/gms/auth/UserRecoverableAuthException;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/googlesignin/c;->a:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    iput-object p2, p0, Lio/flutter/plugins/googlesignin/c;->b:Ljava/lang/Boolean;

    iput-object p3, p0, Lio/flutter/plugins/googlesignin/c;->c:Lio/flutter/plugins/googlesignin/Messages$Result;

    iput-object p4, p0, Lio/flutter/plugins/googlesignin/c;->d:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    iput-object p5, p0, Lio/flutter/plugins/googlesignin/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/c;->a:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    iget-object v1, p0, Lio/flutter/plugins/googlesignin/c;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/flutter/plugins/googlesignin/c;->c:Lio/flutter/plugins/googlesignin/Messages$Result;

    iget-object v3, p0, Lio/flutter/plugins/googlesignin/c;->d:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    iget-object v4, p0, Lio/flutter/plugins/googlesignin/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->m(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V

    return-void
.end method
