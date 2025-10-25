.class Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingOperation"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final boolResult:Lio/flutter/plugins/googlesignin/Messages$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final data:Ljava/lang/Object;

.field final method:Ljava/lang/String;

.field final stringResult:Lio/flutter/plugins/googlesignin/Messages$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final userDataResult:Lio/flutter/plugins/googlesignin/Messages$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugins/googlesignin/Messages$Result<",
            "Lio/flutter/plugins/googlesignin/Messages$UserData;",
            ">;"
        }
    .end annotation
.end field

.field final voidResult:Lio/flutter/plugins/googlesignin/Messages$VoidResult;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$VoidResult;Lio/flutter/plugins/googlesignin/Messages$Result;Lio/flutter/plugins/googlesignin/Messages$Result;Ljava/lang/Object;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->method:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->userDataResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->voidResult:Lio/flutter/plugins/googlesignin/Messages$VoidResult;

    .line 9
    .line 10
    iput-object p4, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->boolResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 11
    .line 12
    iput-object p5, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->stringResult:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 13
    .line 14
    iput-object p6, p0, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate$PendingOperation;->data:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method
