.class public final synthetic Lx2/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m0$b;


# instance fields
.field public final synthetic a:Lx2/m0;

.field public final synthetic b:Lp2/p;


# direct methods
.method public synthetic constructor <init>(Lx2/m0;Lp2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/l0;->a:Lx2/m0;

    iput-object p2, p0, Lx2/l0;->b:Lp2/p;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lx2/l0;->a:Lx2/m0;

    iget-object v1, p0, Lx2/l0;->b:Lp2/p;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lx2/m0;->x(Lx2/m0;Lp2/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
