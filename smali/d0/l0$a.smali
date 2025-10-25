.class Ld0/l0$a;
.super Ld0/l0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld0/l0$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/l0$a;->a:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method
