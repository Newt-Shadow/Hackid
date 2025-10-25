.class abstract Lo1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lo1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/webkit/internal/v0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/webkit/internal/v0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo1/e$a;->a:Lo1/e;

    .line 7
    .line 8
    return-void
.end method
