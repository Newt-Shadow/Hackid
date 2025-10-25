.class public final synthetic Lio/flutter/plugins/googlesignin/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/googlesignin/b;->a:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/b;->a:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    invoke-static {v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->j(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Lm6/Task;)V

    return-void
.end method
