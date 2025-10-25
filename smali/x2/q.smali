.class public final synthetic Lx2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m0$b;


# instance fields
.field public final synthetic a:Lx2/m0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lx2/m0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/q;->a:Lx2/m0;

    iput-object p2, p0, Lx2/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lx2/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/q;->a:Lx2/m0;

    iget-object v1, p0, Lx2/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lx2/q;->c:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lx2/m0;->d0(Lx2/m0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
