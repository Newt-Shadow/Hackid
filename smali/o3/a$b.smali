.class final Lo3/a$b;
.super Lo3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final b:Ly4/e0;


# direct methods
.method public constructor <init>(ILy4/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo3/a;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lo3/a$b;->b:Ly4/e0;

    .line 5
    .line 6
    return-void
.end method
