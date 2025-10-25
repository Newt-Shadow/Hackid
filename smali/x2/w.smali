.class public final synthetic Lx2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/m0$d;


# instance fields
.field public final synthetic a:Lx2/v0;


# direct methods
.method public synthetic constructor <init>(Lx2/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/w;->a:Lx2/v0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/w;->a:Lx2/v0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
