.class public final synthetic Lx2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m0$b;


# instance fields
.field public final synthetic a:Lx2/m0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lp2/p;


# direct methods
.method public synthetic constructor <init>(Lx2/m0;Ljava/util/List;Lp2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/y;->a:Lx2/m0;

    iput-object p2, p0, Lx2/y;->b:Ljava/util/List;

    iput-object p3, p0, Lx2/y;->c:Lp2/p;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/y;->a:Lx2/m0;

    iget-object v1, p0, Lx2/y;->b:Ljava/util/List;

    iget-object v2, p0, Lx2/y;->c:Lp2/p;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lx2/m0;->P(Lx2/m0;Ljava/util/List;Lp2/p;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
