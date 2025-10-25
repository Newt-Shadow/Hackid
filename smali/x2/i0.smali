.class public final synthetic Lx2/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m0$b;


# instance fields
.field public final synthetic a:Lx2/m0;

.field public final synthetic b:Lp2/i;

.field public final synthetic c:Lp2/p;


# direct methods
.method public synthetic constructor <init>(Lx2/m0;Lp2/i;Lp2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/i0;->a:Lx2/m0;

    iput-object p2, p0, Lx2/i0;->b:Lp2/i;

    iput-object p3, p0, Lx2/i0;->c:Lp2/p;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/i0;->a:Lx2/m0;

    iget-object v1, p0, Lx2/i0;->b:Lp2/i;

    iget-object v2, p0, Lx2/i0;->c:Lp2/p;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lx2/m0;->k0(Lx2/m0;Lp2/i;Lp2/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
