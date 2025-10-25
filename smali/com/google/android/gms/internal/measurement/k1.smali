.class public abstract Lcom/google/android/gms/internal/measurement/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "JobSchedulerCompat"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    const-class v5, Landroid/app/job/JobScheduler;

    .line 9
    .line 10
    const-string v6, "scheduleAsPackage"

    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    new-array v7, v7, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v8, Landroid/app/job/JobInfo;

    .line 16
    .line 17
    aput-object v8, v7, v2

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    aput-object v0, v7, v8

    .line 21
    .line 22
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v9, 0x2

    .line 25
    aput-object v8, v7, v9

    .line 26
    .line 27
    const/4 v8, 0x3

    .line 28
    aput-object v0, v7, v8

    .line 29
    .line 30
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    move-object v0, v4

    .line 47
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/reflect/Method;

    .line 48
    .line 49
    :try_start_1
    const-class v0, Landroid/os/UserHandle;

    .line 50
    .line 51
    const-string v5, "myUserId"

    .line 52
    .line 53
    new-array v2, v2, [Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    goto :goto_1

    .line 60
    :catch_1
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-string v0, "No myUserId method available"

    .line 67
    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    sput-object v4, Lcom/google/android/gms/internal/measurement/k1;->b:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string p2, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    invoke-static {p2}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 14
    .line 15
    sget-object p3, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz p3, :cond_4

    .line 18
    .line 19
    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 20
    .line 21
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/k1;->b:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    .line 34
    .line 35
    new-array v1, p3, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Integer;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p0

    .line 53
    :goto_0
    const/4 v0, 0x6

    .line 54
    const-string v1, "JobSchedulerCompat"

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const-string v0, "myUserId invocation illegal"

    .line 63
    .line 64
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    move p0, p3

    .line 68
    :goto_1
    const-string v0, "UploadAlarm"

    .line 69
    .line 70
    const-string v1, "com.google.android.gms"

    .line 71
    .line 72
    sget-object v2, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/reflect/Method;

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, v3, p3

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    aput-object v1, v3, v4

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 v1, 0x2

    .line 89
    aput-object p0, v3, v1

    .line 90
    .line 91
    const/4 p0, 0x3

    .line 92
    aput-object v0, v3, p0

    .line 93
    .line 94
    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    goto :goto_3

    .line 107
    :catch_2
    move-exception p0

    .line 108
    goto :goto_2

    .line 109
    :catch_3
    move-exception p0

    .line 110
    :goto_2
    const-string p3, "error calling scheduleAsPackage"

    .line 111
    .line 112
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    :cond_3
    :goto_3
    return p3

    .line 120
    :cond_4
    :goto_4
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    return p0
.end method
