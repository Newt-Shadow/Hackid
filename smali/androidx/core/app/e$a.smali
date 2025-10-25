.class abstract Landroidx/core/app/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(JLandroid/app/PendingIntent;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static b(Landroid/app/AlarmManager;Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
