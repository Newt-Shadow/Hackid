.class Ll1/p$a;
.super Ll1/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/p;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll1/l;

.field final synthetic b:Ll1/p;


# direct methods
.method constructor <init>(Ll1/p;Ll1/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/p$a;->b:Ll1/p;

    .line 2
    .line 3
    iput-object p2, p0, Ll1/p$a;->a:Ll1/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ll1/m;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public e(Ll1/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/p$a;->a:Ll1/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll1/l;->W()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ll1/l;->S(Ll1/l$f;)Ll1/l;

    .line 7
    .line 8
    .line 9
    return-void
.end method
