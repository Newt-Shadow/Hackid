.class public final Ld3/w$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lb3/x1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb3/x1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Ld3/w$a;->a:Lb3/x1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lb3/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, Ld3/w$a;->a:Lb3/x1;

    return-void
.end method
