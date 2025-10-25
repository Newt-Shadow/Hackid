.class public Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugins/googlesignin/Messages$GoogleSignInApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlesignin/GoogleSignInPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;
    }
.end annotation


# static fields
.field private static final ERROR_FAILURE_TO_RECOVER_AUTH:Ljava/lang/String; = "failed_to_recover_auth"

.field private static final ERROR_REASON_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final ERROR_REASON_NETWORK_ERROR:Ljava/lang/String; = "network_error"

.field private static final ERROR_REASON_SIGN_IN_CANCELED:Ljava/lang/String; = "sign_in_canceled"

.field private static final ERROR_REASON_SIGN_IN_FAILED:Ljava/lang/String; = "sign_in_failed"

.field private static final ERROR_REASON_SIGN_IN_REQUIRED:Ljava/lang/String; = "sign_in_required"

.field private static final ERROR_REASON_STATUS:Ljava/lang/String; = "status"

.field private static final ERROR_USER_RECOVERABLE_AUTH:Ljava/lang/String; = "user_recoverable_auth"

.field private static final REQUEST_CODE_RECOVER_AUTH:I = 0xd02e

.field static final REQUEST_CODE_REQUEST_SCOPE:I = 0xd02f

.field private static final REQUEST_CODE_SIGNIN:I = 0xd02d


# instance fields
.field private activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private final googleSignInWrapper:Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

.field private pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

.field private requestedScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signInClient:Lcom/google/android/gms/auth/api/signin/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->googleSignInWrapper:Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

    .line 7
    .line 8
    return-void
.end method

.method private checkAndSetPendingAccessTokenOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingStringOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkAndSetPendingBoolOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v4, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private checkAndSetPendingOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Lio/flutter/plugins/googlesignin/Messages$UserData;",
            ">;",
            "Lio/flutter/plugins/googlesignin/Messages$VoidResult;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    move-object v7, p6

    .line 14
    invoke-direct/range {v1 .. v7}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;-><init>(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p4, "Concurrent operations detected: "

    .line 28
    .line 29
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p4, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 33
    .line 34
    iget-object p4, p4, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->method:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p4, ", "

    .line 40
    .line 41
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method private checkAndSetPendingSignInOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Lio/flutter/plugins/googlesignin/Messages$UserData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private checkAndSetPendingStringOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v5, p2

    .line 7
    move-object v6, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private checkAndSetPendingVoidOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private errorCodeForStatus(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30d5

    if-eq p1, v0, :cond_0

    const-string p1, "sign_in_failed"

    return-object p1

    :cond_0
    const-string p1, "sign_in_canceled"

    return-object p1

    :cond_1
    const-string p1, "network_error"

    return-object p1

    :cond_2
    const-string p1, "sign_in_required"

    return-object p1
.end method

.method private finishWithBoolean(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->boolResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast v0, Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lio/flutter/plugins/googlesignin/Messages$Result;->success(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 15
    .line 16
    return-void
.end method

.method private finishWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 2
    .line 3
    iget-object v1, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->voidResult:Lio/flutter/plugins/googlesignin/Messages$VoidResult;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    check-cast v1, Lio/flutter/plugins/googlesignin/Messages$VoidResult;

    .line 12
    .line 13
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, v2}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v0}, Lio/flutter/plugins/googlesignin/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v1, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->userDataResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->boolResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v1, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->stringResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 33
    .line 34
    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    check-cast v1, Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 38
    .line 39
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 40
    .line 41
    invoke-direct {v0, p1, p2, v2}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0}, Lio/flutter/plugins/googlesignin/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iput-object v2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 48
    .line 49
    return-void
.end method

.method private finishWithSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->voidResult:Lio/flutter/plugins/googlesignin/Messages$VoidResult;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast v0, Lio/flutter/plugins/googlesignin/Messages$VoidResult;

    .line 9
    .line 10
    invoke-interface {v0}, Lio/flutter/plugins/googlesignin/Messages$VoidResult;->success()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 15
    .line 16
    return-void
.end method

.method private finishWithUserData(Lio/flutter/plugins/googlesignin/Messages$UserData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->userDataResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast v0, Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lio/flutter/plugins/googlesignin/Messages$Result;->success(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 15
    .line 16
    return-void
.end method

.method private static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static synthetic j(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->lambda$disconnect$1(Lm6/Task;)V

    return-void
.end method

.method public static synthetic k(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->lambda$signOut$0(Lm6/Task;)V

    return-void
.end method

.method public static synthetic l(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->onSignInResult(Lm6/Task;)V

    return-void
.end method

.method private synthetic lambda$disconnect$1(Lm6/Task;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithSuccess()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "status"

    .line 12
    .line 13
    const-string v0, "Failed to disconnect."

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$getAccessToken$2(Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "user_recoverable_auth"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->getActivity()Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 21
    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Cannot recover auth because app is not in foreground. "

    .line 28
    .line 29
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-direct {p1, v1, p3, v0}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, p1}, Lio/flutter/plugins/googlesignin/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "getTokens"

    .line 51
    .line 52
    invoke-direct {p0, v0, p2, p4}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingAccessTokenOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->a()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const p3, 0xd02e

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p1, v1, p3, v0}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p1}, Lio/flutter/plugins/googlesignin/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method private synthetic lambda$signOut$0(Lm6/Task;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithSuccess()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "status"

    .line 12
    .line 13
    const-string v0, "Failed to signout."

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public static synthetic m(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->lambda$getAccessToken$2(Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V

    return-void
.end method

.method private onSignInAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->setEmail(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->o()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->setId(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->p()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->setIdToken(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->t()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->setServerAuthCode(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->g()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->setDisplayName(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->r()Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->r()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->setPhotoUrl(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v0}, Lio/flutter/plugins/googlesignin/Messages$UserData$Builder;->build()Lio/flutter/plugins/googlesignin/Messages$UserData;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithUserData(Lio/flutter/plugins/googlesignin/Messages$UserData;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private onSignInResult(Lm6/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/Task;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/b;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lm6/Task;->m(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->onSignInAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lm6/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string v0, "exception"

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/b;->getStatusCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-direct {p0, v0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->errorCodeForStatus(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public clearAuthCache(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld5/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "exception"

    .line 16
    .line 17
    invoke-direct {v0, v2, p1, v1}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public disconnect(Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V
    .locals 1

    .line 1
    const-string v0, "disconnect"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingVoidOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->signInClient:Lcom/google/android/gms/auth/api/signin/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/b;->A()Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lio/flutter/plugins/googlesignin/b;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/flutter/plugins/googlesignin/b;-><init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getAccessToken(Ljava/lang/String;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/accounts/Account;

    .line 2
    .line 3
    const-string v1, "com.google"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "oauth2:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    iget-object v3, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->requestedScopes:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v2, v3}, Li6/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v2, v0, v1}, Ld5/b;->b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p3, v0}, Lio/flutter/plugins/googlesignin/Messages$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x0

    .line 51
    const-string v1, "exception"

    .line 52
    .line 53
    invoke-direct {p2, v1, p1, v0}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p3, p2}, Lio/flutter/plugins/googlesignin/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    move-object v5, v0

    .line 62
    new-instance v0, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Lio/flutter/plugins/googlesignin/c;

    .line 72
    .line 73
    move-object v1, v7

    .line 74
    move-object v2, p0

    .line 75
    move-object v3, p2

    .line 76
    move-object v4, p3

    .line 77
    move-object v6, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/googlesignin/c;-><init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Lio/flutter/plugins/googlesignin/Messages$InitParams;)V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$1;->$SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getSignInType()Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "Unknown signInOption"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getServerClientId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getClientId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    invoke-static {v1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    const-string v1, "google_sign_in"

    .line 67
    .line 68
    const-string v2, "clientId is not supported on Android and is interpreted as serverClientId. Use serverClientId instead to suppress this warning."

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getClientId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_2
    invoke-static {v1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "default_web_client_id"

    .line 90
    .line 91
    const-string v4, "string"

    .line 92
    .line 93
    iget-object v5, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_3
    invoke-static {v1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getForceCodeForRefreshToken()Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->g(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getScopes()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->requestedScopes:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Ljava/lang/String;

    .line 152
    .line 153
    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    .line 154
    .line 155
    invoke-direct {v3, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 160
    .line 161
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->f(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getHostedDomain()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getHostedDomain()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->i(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->getForceAccountName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_7

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->h(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->googleSignInWrapper:Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

    .line 196
    .line 197
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p1, v1, v0}, Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/b;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->signInClient:Lcom/google/android/gms/auth/api/signin/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    return-void

    .line 210
    :catch_0
    move-exception p1

    .line 211
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$FlutterError;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const/4 v1, 0x0

    .line 218
    const-string v2, "exception"

    .line 219
    .line 220
    invoke-direct {v0, v2, p1, v1}, Lio/flutter/plugins/googlesignin/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method public isSignedIn()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x1

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :pswitch_0
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    move v1, v3

    .line 16
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithBoolean(Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    return v3

    .line 24
    :pswitch_1
    if-ne p2, v2, :cond_2

    .line 25
    .line 26
    iget-object p1, v0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->stringResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    check-cast p1, Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 32
    .line 33
    iget-object p2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 34
    .line 35
    iget-object p2, p2, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->data:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    check-cast p2, Ljava/lang/String;

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->pendingOperation:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;

    .line 44
    .line 45
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p0, p2, p3, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->getAccessToken(Ljava/lang/String;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p1, "failed_to_recover_auth"

    .line 52
    .line 53
    const-string p2, "Failed attempt to recover authentication"

    .line 54
    .line 55
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return v3

    .line 59
    :pswitch_2
    if-eqz p3, :cond_3

    .line 60
    .line 61
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Intent;)Lm6/Task;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->onSignInResult(Lm6/Task;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string p1, "sign_in_failed"

    .line 70
    .line 71
    const-string p2, "Signin failed"

    .line 72
    .line 73
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return v3

    .line 77
    :pswitch_data_0
    .packed-switch 0xd02d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestScopes(Ljava/util/List;Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "requestScopes"

    .line 2
    .line 3
    invoke-direct {p0, v0, p2}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingBoolOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->googleSignInWrapper:Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

    .line 7
    .line 8
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p1, "sign_in_required"

    .line 17
    .line 18
    const-string p2, "No account to grant scopes."

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->googleSignInWrapper:Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

    .line 51
    .line 52
    invoke-virtual {v1, p2, v2}, Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Scope;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->finishWithBoolean(Ljava/lang/Boolean;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->googleSignInWrapper:Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;

    .line 75
    .line 76
    invoke-virtual {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->getActivity()Landroid/app/Activity;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x0

    .line 81
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 82
    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 88
    .line 89
    const v2, 0xd02f

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1, v2, p2, v0}, Lio/flutter/plugins/googlesignin/GoogleSignInWrapper;->requestPermissions(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public signIn(Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Lio/flutter/plugins/googlesignin/Messages$UserData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "signIn"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingSignInOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->signInClient:Lcom/google/android/gms/auth/api/signin/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/b;->z()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->getActivity()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0xd02d

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "signIn needs a foreground activity"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public signInSilently(Lio/flutter/plugins/googlesignin/Messages$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Lio/flutter/plugins/googlesignin/Messages$UserData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "signInSilently"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingSignInOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->signInClient:Lcom/google/android/gms/auth/api/signin/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/b;->C()Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lm6/Task;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->onSignInResult(Lm6/Task;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlesignin/d;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lio/flutter/plugins/googlesignin/d;-><init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public signOut(Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V
    .locals 1

    .line 1
    const-string v0, "signOut"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->checkAndSetPendingVoidOperation(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$VoidResult;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->signInClient:Lcom/google/android/gms/auth/api/signin/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/b;->B()Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lio/flutter/plugins/googlesignin/a;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/flutter/plugins/googlesignin/a;-><init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 18
    .line 19
    .line 20
    return-void
.end method
